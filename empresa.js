    function postComment() {
        // Pegar o nome e o texto do textarea
        var nome = document.getElementById("nome").value;
        var comentario = document.getElementById("comentario").value;
        // pegar a avaliação de estrelas//
        var classificacao = document.querySelector('input[name="estrela-avaliacao"]:checked');


        // Limpar os campos de entrada
        document.getElementById("nome").value = "";
        document.getElementById("comentario").value = "";
        //limpar a avaliação estrela//
        document.querySelector('input[name="estrela-avaliacao"]:checked').checked = false;
        var estrelas = document.querySelectorAll('input[name="estrela-avaliacao"]');
        estrelas.forEach(function(estrela) {
        estrela.checked = false;
        });


        // Criar um novo elemento div para o comentário
        var comentarioElemento = document.createElement("div");
        comentarioElemento.className = "comentario";

        // Criar um novo nó de texto com o nome e o comentário
        var comentarioTexto = document.createTextNode(nome + ":" + classificacao.value  + comentario);
        comentarioElemento.appendChild(comentarioTexto);

        
        // Adicionar o novo elemento div ao contêiner de comentários
        var containerComentarios = document.getElementById("comentarios");
        containerComentarios.appendChild(comentarioElemento);
     

        // Criamos um novo elemento div para as estrelas
        var estrelasElemento = document.createElement("div");
        estrelasElemento.className = "estrelas";

        // Adicionar as estrelas visualmente//
        for (var i = 0; i < parseInt(classificacao.value); i++) {
            var estrela = document.createElement("span");
            estrela.innerHTML = "★"; // Símbolo de estrela Unicode
           estrelasElemento.appendChild(estrela);
           }
        
         // Adicionamos um novo elemento div das estrelas referente contêiner de comentários//
         containerComentarios.appendChild(estrelasElemento);
}
    


