/*cancelar formulario*/
function cancelar() {
    document.getElementById('modal').style.display = 'block';
}

function fecharModal() {
    document.getElementById('modal').style.display = 'none';
}

function excluirArquivo() {
    // Excluir o arquivo
    alert('Arquivo excluído com sucesso!');
    fecharModal();
}

/*enviar formulario*/

function enviar() {
    document.getElementById('modal-envio').style.display = 'block';
}

function fecharModalEnvio() {
    document.getElementById('modal-envio').style.display = 'none';
}

function enviarArquivo() {
    // Excluir o arquivo
    alert('Formulario enviado com sucesso!');
    fecharModalEnvio();
}