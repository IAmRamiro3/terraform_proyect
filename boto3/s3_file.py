import boto3

def upload_to_s3(local_file, bucket_name, s3_file):
    s3 = boto3.client('s3')

    try:
        s3.upload_file(local_file, bucket_name, s3_file)
        print("Subida exitosa.")
        return True
    except FileNotFoundError:
        print("El archivo no se encontró.")
        return False

local_file_path_html = './index.html'
local_file_path_txt = './proyectoRedes.txt'
bucket_name = 'proyecto-carlos-ramiro' 
s3_file_name_html = 'index.html'
s3_file_name_txt = 'proyectoRedes.txt'  


upload_to_s3(local_file_path_html, bucket_name, s3_file_name_html)
upload_to_s3(local_file_path_txt, bucket_name, s3_file_name_txt)