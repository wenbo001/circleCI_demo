echo "Logging into Sandbox Salesforce Org"
mkdir -p keys

# Write the key content from the environment variable to the file
echo "$SANDBOX_CERT_KEY" > keys/server.key

# Verify the key file
if [ ! -s keys/server.key ]; then
  echo "Error: server.key file is empty or not created correctly."
  exit 1
fi

# Verify the key file
if [ ! -s keys/server.key ]; then
  echo "Error: server.key file is empty or not created correctly."
  exit 1
fi


echo "Authenticating org"
sfdx force:auth:jwt:grant --clientid $SANDBOX_APP_KEY --jwtkeyfile keys/server.key --username $SANDBOX_USERNAME --setdefaultdevhubusername -a DevHub