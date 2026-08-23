# Day 07 - Ansible Vault Commands

## Create Encrypted File

ansible-vault create secrets.yml

## View Encrypted File

cat secrets.yml

## Edit Encrypted File

ansible-vault edit secrets.yml

## Decrypt File

ansible-vault decrypt secrets.yml

## Encrypt Existing File

ansible-vault encrypt secrets.yml

## Change Vault Password

ansible-vault rekey secrets.yml

## View Secret Content

ansible-vault view secrets.yml

## Execute Playbook With Vault

ansible-playbook site.yml --ask-vault-pass

## Use Password File

ansible-playbook site.yml --vault-password-file vault_pass.txt

## Encrypt Variable

ansible-vault encrypt_string 'MySecretPassword'

## Encrypt Named Variable

ansible-vault encrypt_string 'MySecretPassword' --name db_password

## Verify Vault Help

ansible-vault --help

## Verbose Execution

ansible-playbook site.yml --ask-vault-pass -vvv
