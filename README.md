# WaBot-VendasSSH (v1.1.0) 🚀

Versão atualizada e modernizada do bot de vendas SSH via WhatsApp.

## 🛠️ Requisitos
- Node.js 18 ou superior
- Uma VPS com Ubuntu (recomendado 20.04 ou 22.04)
- Token do Mercado Pago
- WhatsApp para escanear o QR Code

## 📥 Instalação

1. Clone o repositório ou baixe os arquivos.
2. Acesse a pasta do bot:
   ```bash
   cd bot
   ```
3. Instale as dependências:
   ```bash
   npm install
   ```
4. Configure suas credenciais:
   - Copie o arquivo `.env.example` para `.env`:
     ```bash
     cp .env.example .env
     ```
   - Edite o arquivo `.env` com seus dados.

## 🚀 Como usar

### 1. Conectar o WhatsApp (QR Code)
Execute o comando abaixo e escaneie o código:
```bash
npm run qrcode
```
Após conectar, você pode fechar com `CTRL+C`.

### 2. Rodar o Bot (Modo Anti-Queda)
Para manter o bot rodando mesmo que você saia da VPS:
```bash
screen -dmS wabot bash start.sh
```

## 📂 Estrutura do Projeto
- `bot/index.js`: Lógica principal do bot.
- `bot/config.js`: Configurações (carrega do `.env`).
- `bot/data/`: Banco de dados local (JSON).
- `bot/src/`: Scripts auxiliares para geração de SSH.

## 📌 Observações
- O bot deve rodar na mesma VPS onde o serviço SSH está instalado.
- Certifique-se de que as portas necessárias estejam abertas.

---
🔥 Original por: [MegahBox](https://t.me/MegahBox)
✨ Atualizado por: Gemini CLI
