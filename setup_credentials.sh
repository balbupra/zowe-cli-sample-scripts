# Unlock the keyring
echo 'jenkins' #| gnome-keyring-daemon --unlock
# Create the Profile (move this to the credential stuff)
zowe profiles create zosmf zed1 --host 192.49.207.105 --port 443 -u TT6PBE1 -p Prashu123 --no-ru
