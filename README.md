# deploy goproxy-vps to OPENSHIFT 3

1. secure route TLS Termination: Passthrough, e.g. yourhostname.44fs.preview.openshiftapps.com

2. use XCA or openssl, sign a certificate for yourhostname.44fs.preview.openshiftapps.com, export cert+key.pem

3. docker image: wangyi2005/goproxy-vps, Environment Variables: CONFIG_FILE_URL e.g.https://pastebin.com/raw/QUPuM4L6

4. create a pastebin, server_name = ["yourhostname.44fs.preview.openshiftapps.com"], pem from cert+key.pem

5. chrome+SwitchyOmega https proxy:  yourhostname.44fs.preview.openshiftapps.com:443
