#!/bin/bash
# Script de Instalação WaBot-VendasSSH v1.1.0

msg() {
    echo -e "\e[1;32m$1\e[0m"
}

msg "Iniciando instalação do WaBot-VendasSSH..."

# Atualizar sistema
apt update && apt upgrade -y

# Instalar Node.js 18
if ! command -v node &> /dev/null; then
    msg "Instalando Node.js 18..."
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
    apt install -y nodejs
    apt install -y npm 
fi

# Instalar dependências do sistema
apt install -y screen wget unzip git

# Entrar na pasta do bot
cd bot

# Instalar dependências do Node
msg "Instalando dependências do bot..."
npm install

msg "Instalação concluída!"
msg "Agora siga estes passos:"
echo "1. Edite o arquivo bot/.env com seu token e número."
echo "2. Execute 'npm run qrcode' para conectar o WhatsApp."
echo "3. Execute 'screen -dmS wabot bash start.sh' para iniciar o bot."
