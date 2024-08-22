echo "Logging into Sandbox Salesforce Org"
mkdir -p keys

# Write the key content to the file
cat <<EOT > keys/server.key
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA+51g0qNx4BJfCm3pFbeQEWYwQFeEbDqMZvwSyWCdgTHas8Gv
i1e4tYNY4czT96VO2TGTIVPPThTL6cFmn99A/EAHhhAxApEpNQw2/wfRau7tjOwn
+MIWZa2+RE8nX3VyCK/J0rnUa0hMWK4GO/jF/i40SRaUC7Vo4jeK6nI5/KgI7XSz
W9/QfqRlBbgp20Nsj+8HGwzZ9pOXB7kLQEaduRA4ls4gWrxop0Yl9qMGJvsXdMjd
77s1ARjEoy8wsGHI708q4EpM6DgV7U6UZ2YI7hI9uLYY06ZwGYsoeEBrlli4ko+W
39CLgPZJnzsrqqW9AhiMTtxBsf7Y9zEmxPrc2QIDAQABAoIBAB6PhusOnw4wLQr/
Pog8u2rhloq6FoNuuQ7pHv8GlRrUC1Q5+jBafzzMr0b9seEqWuFWfCBYJZ2+OOYz
b1uLqkD5JfDKlqlRKEghK6zeLjlmu8OaC2DTchT3fVyeoJGfmjIj58eIepxtM5ix
ymAOXz34LrGR5Hlnl02ioWTIavKc2JGgT1+Or87osb16xJBPGIHlPR7UJskkt1Xm
+MXf3rtTnSYV5LmtFs0DGvMPrLMbElU4FymvH/1fR+G12hOWoTqg7yI6l4Oosu7S
2vDfW6jYuNTsXnPqcSFAl2GIAX9gGMUM4+t6e1BwSLZXScoLrjeiUAwYfNfJbYaW
TK4H+WECgYEA/oJPBbv5f79I8Pe3bs436xIonf/EbYgDmQ31OZu6Sf9j9E8lzZ6P
PkoWtgC0Zu/mmc7MTVjtrb/L2dq4xJ1kgwiNCi5s8QRat8qe89lVSapT71TBsmZ4
cKEetcNqnc9vyvCKGZQbuPtOanQIaB2tNlb2oI6NNcA+0LXGNQjTVqMCgYEA/Ra6
nWt5ws196KoH3nUg1ZeTf9/PD6NzavsbFOVdGHJUQmyb4g60/1RgUrBhYR6lKwzS
vlQ4gXM8y+B2jsLzV1s9T60tk4UtK/rgtk3tWmbZyCmkBKYC3ms/JTHlZqACIz1/
aXkKR8AzipDTkE7J8uElRp/fnIfNwT527oIdglMCgYEAp9CqZGCO4hHx+ZmNJQ3q
xyBhEdVM4uAVZz1R3dt2GUbB1Jy/k3Yig3L8yKNsUJeM2QwHoFSr264krxBOVq5l
URU5UmZMRRuW6as75hP+7aTW1W9wjL6OWc2TX0xsJ4RY9Vpn5PfI08845G6AAI7Y
4IS0+CcmqzOI97tz5xJbr7sCgYBgL2Iu76iv0z8VzID/F46p/lhNUfa0n87+in5J
W74cy16ge/xmVmaNXzjYVDY+HdJx4Qa61PFAqVYiuaT1LrwiqAdOH6fhl8yKGWeL
gWRCZjJAcyrlpV4Tv7iY3zSq4wbM89NXd2vjxvUPpWjyQC9aAh0TkTD/oVEeLyou
DP9ABwKBgQCvnM3vTXx4tvTUT2v63R+6V/Tm4oZd2Bhdphz1rMw2hYaBAJ6p3+XM
eOJ4L8Ocg8QiiHEudpPXfxYF/Wc+9QRKqg/l7w2DW8cIUM/gVuzyM+p+92PZbPIt
HvKk3vxJxbvUWq9dE1W2gSjggpxm+Iz4XsHXty7gkBBibNFrpPCP8g==
-----END RSA PRIVATE KEY-----
EOT

# Verify the key file
if [ ! -s keys/server.key ]; then
  echo "Error: server.key file is empty or not created correctly."
  exit 1
fi
# Print the value of the key
cat keys/server.key

echo "Authenticating org"
sfdx force:auth:jwt:grant --clientid $SANDBOX_APP_KEY --jwtkeyfile keys/server.key --username $SANDBOX_USERNAME --setdefaultdevhubusername -a DevHub