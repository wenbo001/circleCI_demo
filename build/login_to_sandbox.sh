echo "Logging into Sandbox Salesforce Org"
mkdir -p keys

# Ensure the environment variable is set
if [ -z "$SANDBOX_CERT_KEY" ]; then
  echo "Error: SANDBOX_CERT_KEY is not set."
  exit 1
fi

# Decode the base64-encoded certificate key and write it to the file
echo "$SANDBOX_CERT_KEY" | base64 -di > keys/server.key

# Verify the key file
if [ ! -s keys/server.key ]; then
  echo "Error: server.key file is empty or not created correctly."
  exit 1
fi

echo "Authenticating org"

sfdx force:auth:jwt:grant -f keys/server.key -i 3MVG9PwZx9R6_Urd9r8PNJwDnYvA4Bw.SL55ochLfU19uTR9i3aReGiGEnsgcFvq3MHJWqDwZr3jf9mVJYQBm -o liuwenbo@case.com -d -s -r https://login.salesforce.com
