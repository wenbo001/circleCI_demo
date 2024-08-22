echo "Logging into Sandbox Salesforce Org"
mkdir -p keys
echo -e "$SANDBOX_CERT_KEY" | sed 's/\\n/\n/g' > keys/server.key

# Print the value of the key
cat keys/server.key

echo "Authenticating org"
sfdx force:auth:jwt:grant --clientid $SANDBOX_APP_KEY --jwtkeyfile keys/server.key --username $SANDBOX_USERNAME --setdefaultdevhubusername -a DevHub