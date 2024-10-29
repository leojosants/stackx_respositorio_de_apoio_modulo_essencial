/**
 * Chatlab - Conceitos de array/object em Javascript.
 * 
 * Implemente as funções a partir daqui.
 */

/* - - - - - - - - -  global - - - - - - - - - */
const messageCommit = document.querySelector("#message-commit");
const messageInput = document.querySelector("#message-input");
const chatMessages = document.querySelector("#chat-messages");
const listaMensagens = [];

/* - - - - - - - - -  funções - - - - - - - - - */

function criarElementoHTML(elementoHTML) {
  return document.createElement(elementoHTML);
}

function adicionarClasse(elementoHTML, nomeDaClasse) {
  elementoHTML.classList.add(nomeDaClasse);
}

function innerTextFunction(elementoHTML, texto) {
  elementoHTML.innerText = texto;
}

function adicionarElementoFilhoAoElementoPai(elementoHTMLPai, elementoHTMLFilho) {
  elementoHTMLPai.appendChild(elementoHTMLFilho);
}

function limparCampo() {
  messageInput.value = "";
}

function adicionarFocoNoCampo() {
  messageInput.focus();
}

function adicionarMensagem(apelido, mensagem) {
  const estrutura = {
    apelido: apelido,
    mensagem: mensagem,
  };

  listaMensagens.push(estrutura);
}

function formatarMensagens() {
  const fragmento = document.createDocumentFragment();

  listaMensagens.forEach(
    function (item) {
      const chatMessage_div = criarElementoHTML("div");
      adicionarClasse(chatMessage_div, "chat-message");

      const chatMessageApelido_span = criarElementoHTML("span");
      adicionarClasse(chatMessageApelido_span, "chat-message-apelido");
      innerTextFunction(chatMessageApelido_span, item.apelido);

      const chatMessageItem_span = criarElementoHTML("span");
      adicionarClasse(chatMessageItem_span, "chat-message-item");
      innerTextFunction(chatMessageItem_span, item.mensagem);

      chatMessage_div.appendChild(chatMessageApelido_span);
      chatMessage_div.appendChild(chatMessageItem_span);
      fragmento.appendChild(chatMessage_div);
    }
  );

  return fragmento;
}

function atualizarHTML() {
  adicionarElementoFilhoAoElementoPai(
    chatMessages,
    formatarMensagens()
  );

  limparCampo();

  adicionarFocoNoCampo();
}

function commitMessageClickHandler() {
  const apelido = "Leo";
  const message = messageInput.value.trim();

  if (message === "") {
    alert("Campo mensagem em vazio, favor preencher!");
    limparCampo();
    adicionarFocoNoCampo();
    return;
  }

  adicionarMensagem(apelido, message);
  atualizarHTML();
}

function executarProgramaPrincipal() {
  messageCommit.addEventListener(
    "click", commitMessageClickHandler
  );
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