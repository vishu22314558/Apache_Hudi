import boto3

client = boto3.client('s3')
client.delete_object(Bucket='mybucketname', Key='myfile.whatever')