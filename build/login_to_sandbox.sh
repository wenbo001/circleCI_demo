echo "Logging into Sandbox Salesforce Org"
mkdir keys
echo $SANDBOX_CERT_KEY | base64 -di > keys/server.key

echo "Authenticating org"
sfdx force:auth:jwt:grant --jwtkeyfile keys/server.key -i $SANDBOX_APP_KEY -u $SANDBOX_USERNAME -d -s -r https://login.salesforce.com
