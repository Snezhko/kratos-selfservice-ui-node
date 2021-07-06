export SECURITY_MODE=cookie
export KRATOS_BROWSER_URL=https://lungs-dev.fr.to/1/
export KRATOS_PUBLIC_URL=https://lungs-dev.fr.to/1/
export KRATOS_ADMIN_URL=https://127.0.0.1:8434/
export PORT=8455
export BASE_URL=https://lungs-dev.fr.to/0/

echo 'KRATOS_BROWSER_URL='$KRATOS_BROWSER_URL
echo 'KRATOS_PUBLIC_URL='$KRATOS_PUBLIC_URL
echo 'KRATOS_ADMIN_URL='$KRATOS_ADMIN_URL
echo 'BASE_URL='$BASE_URL
echo 'PORT='$PORT

# npm run serve
npm start
