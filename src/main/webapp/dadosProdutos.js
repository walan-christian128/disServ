 $(document).ready(function() {
        $("#modalId").on("keypress", function(event) {
            if (event.which === 13) {
                var numCnpj = $("#modalId").val(); // Use $(this) para referenciar o próprio campo
                var server = "select"; // Substitua "select" pela URL correta do seu servlet
                $.ajax({
                    url: server,
                    type: "GET",
                    dataType: "json",
                    data: { id: numCnpj }, // Passando o número do CNPJ como parâmetro "id" na requisição GET
                    success: function(dados) {
                        console.log(dados);
                        // Aqui você pode manipular os dados recebidos e atualizar os campos do modal
                        $("#modalNome").val(dados.modalNome);
                        $("#modalCnpj").val(dados.modalCnpj);
                        $("#modalEndereco").val(dados.modalEndereco);
                        $("#modalNumero").val(dados.modalNumero);
                        // E assim por diante para os demais campos
                    },
                    error: function(xhr, status, error) {
                        console.error(xhr.responseText);
                        // Tratar erros, se necessário
                    }
                });
            }
        });
    });