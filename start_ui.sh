export SECURITY_MODE=cookie
export KRATOS_BROWSER_URL=https://testweb.org.by/1/
export KRATOS_PUBLIC_URL=https://testweb.org.by/1/
export KRATOS_ADMIN_URL=http://127.0.0.1:4434/
export PORT=4455
export BASE_URL=https://testweb.org.by/0/
# export TLS_CERT_PATH='../../testweb/ssl/testweb.crt'
# export TLS_KEY_PATH='../../testweb/ssl/testweb.key'

export NODE_TLS_REJECT_UNAUTHORIZED='0' # only for dev!!!

echo 'KRATOS_BROWSER_URL='$KRATOS_BROWSER_URL
echo 'KRATOS_PUBLIC_URL='$KRATOS_PUBLIC_URL
echo 'KRATOS_ADMIN_URL='$KRATOS_ADMIN_URL

# npm run serve
npm start
