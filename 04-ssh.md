 04-ssh.md                                                     # Installer, configurer, et tester SSH pour un accès sécurisé entre deux machines (ou une VM + machine hôte)
**-**Step 1 – Installer SSH

sudo apt update
sudo apt install openssh-server -y
sudo systemctl status ssh

#(Si ce n’est pas actif, démarrer avec sudo systemctl start ssh et activer au démarrage avec sudo systemctl enable ssh)

**-**Step 2 – Générer une clé SSH

Sur la machine cliente (ex. Windows powershell, avec Git Bash, ou ta VM client) :

ssh-keygen -t rsa -b 4096 -C aminalinux@192.168.223.131

**-**Step 3 – Copier la clé publique vers le serveur

cat ~/.ssh/id_rsa.pub | ssh user@server_ip "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"

**-**Step 4 – Tester la connexion SSH

ssh aminalinux@192.168.223.131 
