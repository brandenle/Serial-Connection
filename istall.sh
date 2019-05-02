#Installs the script folder
echo -ne "\033]0;Serial Instillation\007"
#Path of the scripts
pth=$(dirname "${BASH_SOURCE[0]}")
echo "Warning!!!!: YOU WILL BE ASKED TO RUN AS ROOT DURING INSTALL"
#watson ALL=(ALL) NOPASSWD:
usr=`echo "$USER"`
#Writes root privilages to sudoers
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/menus/agconnectionsmenu.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/menus/cconnectionsmenu.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/menus/fconnectionsmenu.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/menus/tgconnection.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/menus/ugconnection.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/tcommands/logoutput.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/tcommands/newcommand.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/tcommands/newconnection.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/tcommands/openlogsfolder.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/tcommands/screenterm.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/tcommands/showcommands.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/tcommands/updatecommands.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/connect.sh' >> /etc/sudoers"
sudo sh -c "echo '$usr ALL=(ALL) NOPASSWD:$pth/serialmenu.sh' >> /etc/sudoers"