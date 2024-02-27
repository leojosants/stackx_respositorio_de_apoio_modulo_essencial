/**
 * Chatlab - Conceitos de array/object em Javascript.
 * 
 * Implemente as funções a partir daqui.
 */

/* - - - - - - - - -  global - - - - - - - - - */
const messageCommit = document.querySelector('#message-commit');
const messageInput = document.querySelector('#message-input');
const chatMessages = document.querySelector('#chat-messages');
const listaMensagens = [];

/* - - - - - - - - -  funções - - - - - - - - - */
function adicionarMensagem(apelido, mensagem) {
  const estrutura = {
    apelido: apelido,
    mensagem: mensagem,
  };
  listaMensagens.push(estrutura);
}

function criarElementoHTML(elementoHTML) {
  return document.createElement(elementoHTML);
}

function adicionarClasse(elementoHTML, nomeDaClasse) {
  elementoHTML.classList.add(nomeDaClasse);
}

function adicionarElementoFilhoAoElementoPai(elementoHTMLPai, elementoHTMLFilho) {
  elementoHTMLPai.appendChild(elementoHTMLFilho);
}

function formatarMensagens() {
  const chatMessageDiv = criarElementoHTML('div');
  adicionarClasse(chatMessageDiv, 'chat-message');

  for (let indice = 0; indice < listaMensagens.length; indice++) {
    const chatMessageApelidoSpan = criarElementoHTML('span');
    adicionarClasse(chatMessageApelidoSpan, 'chat-message-apelido')
    chatMessageApelidoSpan.innerText = listaMensagens[indice].apelido;

    const chatMessageItemSpan = criarElementoHTML('span');
    adicionarClasse(chatMessageItemSpan, 'chat-message-item');
    chatMessageItemSpan.innerText = ` ${listaMensagens[indice].mensagem}`;

    const brElement = criarElementoHTML('br');

    adicionarElementoFilhoAoElementoPai(chatMessageDiv, chatMessageApelidoSpan);
    adicionarElementoFilhoAoElementoPai(chatMessageDiv, chatMessageItemSpan);
    adicionarElementoFilhoAoElementoPai(chatMessageDiv, brElement);
  }

  return chatMessageDiv;
}

function atualizarHTML() {
  adicionarElementoFilhoAoElementoPai(chatMessages, formatarMensagens());
  limparCampo();
  adicionarFocoNoCampo();
}

function limparCampo() {
  messageInput.value = '';
}

function adicionarFocoNoCampo() {
  messageInput.focus();
}

function commitMessageClickHandler() {
  const apelido = 'Leo';
  const message = messageInput.value.trim();

  if (message === '') {
    alert('Campo mensagem em vazio, favor preencher!');
    limparCampo();
    adicionarFocoNoCampo();
    return;
  }

  adicionarMensagem(apelido, message);
  atualizarHTML();
}

function executarProgramaPrincipal() {
  messageCommit.addEventListener('click', commitMessageClickHandler);
}

/* - - - - - - - - - programa principal - - - - - - - - - */
executarProgramaPrincipal();

// --------------------------------
// Não remover estas linhas
// --------------------------------
module.exports =
{
  adicionarMensagem,
  formatarMensagens,
  atualizarHTML,
  commitMessageClickHandler
};
// --------------------------------