# Day 07 - Practice Session

## Lab 1

Create Practice Directory

mkdir Day07_Vault_Lab

cd Day07_Vault_Lab

## Lab 2

Create Secret File

ansible-vault create secrets.yml

Add:

- Database Password
- AWS Secret Key

Save file.

Capture screenshot.

## Lab 3

View Encrypted File

cat secrets.yml

Observe encrypted content.

Capture screenshot.

## Lab 4

Edit Vault File

ansible-vault edit secrets.yml

Modify values.

Verify encryption remains intact.

## Lab 5

Create Playbook

site.yml

Load variables from secrets.yml

Use vault variables inside tasks.

## Lab 6

Execute Playbook

ansible-playbook site.yml --ask-vault-pass

Verify successful execution.

## Lab 7

Decrypt File

ansible-vault decrypt secrets.yml

Verify contents.

Re-encrypt file.

## Lab 8

Encrypt Single Variable

ansible-vault encrypt_string 'Admin@123' --name admin_password

Use variable inside playbook.

## Screenshots To Capture

- Vault file creation
- Encrypted file content
- Vault edit process
- Playbook execution
- Variable encryption
- Successful secret usage
