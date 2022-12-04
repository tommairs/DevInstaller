##############################################################
# Go Installer
#
# First run the LAMPP Stack installer, then run this.
##############################################################

wget https://go.dev/dl/go1.19.3.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
echo "export PATH=$PATH:/usr/local/go/bin" >>  ~/.profile
go version

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.profile
source ~/.cargo/env
rustc -V

# Append to MOTD
go version >>/etc/motd
rustc -V  >>/etc/motd
