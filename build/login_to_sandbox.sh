echo "Logging into Sandbox Salesforce Org"
mkdir -p keys

# Write the key content from the environment variable to the file
printf "%s" "$SANDBOX_CERT_KEY" > keys/server.key

# Verify the key file
if [ ! -s keys/server.key ]; then
  echo "Error: server.key file is empty or not created correctly."
  exit 1
fi

echo "Authenticating org"
sfdx force:auth:jwt:grant -f keys/server.key -i 3MVG9PwZx9R6_Urd9r8PNJwDnYvA4Bw.SL55ochLfU19uTR9i3aReGiGEnsgcFvq3MHJWqDwZr3jf9mVJYQBm -o liuwenbo@case.com -d -s -r https://login.salesforce.comgi