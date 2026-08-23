# Secret Handling

The secret manifest contains placeholders only.

Do not commit real passwords.

Create the lab Secret using a local command:

kubectl create secret generic springboot-secret \
  --namespace devops-portfolio \
  --from-literal=DATABASE_USERNAME='<username>' \
  --from-literal=DATABASE_PASSWORD='<password>'

Do not capture the literal values in screenshots.

Do not print decoded Secret values in terminal output.
