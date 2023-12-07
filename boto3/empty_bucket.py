import boto3

def empty_s3_bucket(bucket_name):
    s3 = boto3.client('s3')

    try:
        objects = s3.list_objects_v2(Bucket=bucket_name)['Contents']

        for obj in objects:
            s3.delete_object(Bucket=bucket_name, Key=obj['Key'])
        
        print(f"Bucket '{bucket_name}' vaciado exitosamente.")
        return True
    except Exception as e:
        print(f"Error al vaciar el bucket: {e}")
        return False

bucket_name_to_empty = 'proyecto-carlos-ramiro'  # Reemplaza con el nombre de tu bucket en S3

empty_s3_bucket(bucket_name_to_empty)
