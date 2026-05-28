require('dotenv').config();

const config = {
  dono: process.env.DONO || "559184035474", // seu número com 55+ddd sem o 9
  tempo_teste: process.env.TEMPO_TESTE || "3", // tempo do teste em horas
  valorLogin: parseFloat(process.env.VALOR_LOGIN) || 0.10, // valor do login SSH
  nomeLoja: process.env.NOME_LOJA || "Loja teste", // nome da sua loja virtual
  linkApp: process.env.LINK_APP || "LinkAqui", // Link do seu app, playStore/Mediafire
  token_mp: process.env.TOKEN_MP || "TokenAqui" // seu token do mercado pago
};

module.exports = {
  config
};