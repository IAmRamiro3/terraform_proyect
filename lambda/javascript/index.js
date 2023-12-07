const AWS = require('aws-sdk');
const sns = new AWS.SNS();

exports.handler = async (event) => {
    console.log('Evento:', JSON.stringify(event));

    if (event && event.length > 0 && event[0].s3) {
        const bucket = event[0].s3.bucket.name;
        const key = event[0].s3.object.key;
    try {
        const s3 = new AWS.S3();
        const params = {
            Bucket: bucket,
            Key: key
        };

        const data = await s3.getObject(params).promise();
        const contenido = data.Body.toString('utf-8');

        const mensaje = {
            Message: `El contenido del archivo se ha actualizado:\n${contenido}`,
            Subject: 'Actualización de archivo de texto',
            TopicArn: 'arn:aws:sns:us-east-1:914642698270:proyectoCarlos'
        };

        await sns.publish(mensaje).promise();

        return {
            statusCode: 200,
            body: JSON.stringify('Notificación enviada con éxito'),
        };
    } catch (error) {
        console.error(error);
        return {
            statusCode: 500,
            body: JSON.stringify('Error al procesar la notificación'),
        };
    }
} else {
    console.error('Estructura de evento incorrecta');
    return {
        statusCode: 400,
        body: JSON.stringify('Estructura de evento incorrecta'),
    };
}
};
