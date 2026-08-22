# Day 09 Practice Session

## Lab Setup

mkdir -p ~/DEVOPS/DevOps-Learning-Hub/PRACTISE_SESSION/Day09_Archiving_Lab

cd ~/DEVOPS/DevOps-Learning-Hub/PRACTISE_SESSION/Day09_Archiving_Lab

mkdir project

touch project/file1.txt

touch project/file2.txt

## Lab 1

Create Tar Archive

tar -cvf project.tar project/

Screenshot:

01_create_tar.png

## Lab 2

View Archive Contents

tar -tvf project.tar

Screenshot:

02_view_tar_contents.png

## Lab 3

Extract Archive

tar -xvf project.tar

Screenshot:

03_extract_tar.png

## Lab 4

Create GZIP Archive

tar -czvf project.tar.gz project/

Screenshot:

04_tar_gzip.png

## Lab 5

Compress Individual File

echo "DevOps Practice" > notes.txt

gzip notes.txt

Screenshot:

05_gzip_file.png

## Lab 6

Create ZIP Archive

zip -r project.zip project/

Screenshot:

06_zip_archive.png

## Validation

- Archive Created

- Compression Successful

- Extraction Successful

- Backup Ready
