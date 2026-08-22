# Day 05 - S3 Commands

## List Buckets

aws s3 ls

Screenshot:

01_list_buckets.png

## Create Bucket

aws s3 mb s3://devops-learning-bucket

Screenshot:

02_create_bucket.png

## Upload File

aws s3 cp test.txt s3://devops-learning-bucket

Screenshot:

03_upload_file.png

## List Objects

aws s3 ls s3://devops-learning-bucket

Screenshot:

04_list_objects.png

## Download File

aws s3 cp s3://devops-learning-bucket/test.txt .

Screenshot:

05_download_file.png

## Sync Folder

aws s3 sync ./data s3://devops-learning-bucket

Screenshot:

06_sync_folder.png

## Enable Versioning

aws s3api put-bucket-versioning
 --bucket devops-learning-bucket
 --versioning-configuration Status=Enabled

Screenshot:

07_enable_versioning.png

## View Bucket Versioning

aws s3api get-bucket-versioning
 --bucket devops-learning-bucket

Screenshot:

08_bucket_versioning.png

## List Object Versions

aws s3api list-object-versions
 --bucket devops-learning-bucket

Screenshot:

09_object_versions.png

## Remove Object

aws s3 rm s3://devops-learning-bucket/test.txt

Screenshot:

10_delete_object.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
