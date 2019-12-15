# Unlock the keyring
echo 'jenkins' #| gnome-keyring-daemon --unlock
zowe profiles create zosmf prashuzowe --host 192.49.207.105 --port 443 -u TT6PBE1 -p Prashu99 --no-ru

# Create the Profile (move this to the credential stuff)
bright profiles create zosmf tso1 --host tso1 --port 443 -u $CREDENTIALS_USR -p $CREDENTIALS_PSW --no-ru
bright profiles create endevor endtso1 --host tso1 --port 50002 --user $CREDENTIALS_USR --pass $CREDENTIALS_PSW --prot http
#bright profiles create endevor endca31 --host usilca31 --port 47400 --user $CREDENTIALS_USR --pass $CREDENTIALS_PSW --prot http
bright profiles create fmp fmpca32 --host ca32.ca.com --port 19871 --user $CREDENTIALS_USR --pass $CREDENTIALS_PSW --protocol http --ru false