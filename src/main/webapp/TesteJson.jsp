<html lang="pt-BR">
<%@ page import="Model.Fornecedores"%>
<%@ page import="DAO.FornecedoresDAO"%>
   <head>
    <title>Venda</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>    
    <% Fornecedores fornecedores = new Fornecedores(); %>
  
     <body class="bg-light">
        <main class="container d-flex h-auto d-inline-block">

       <form id="buscarProduto" class="needs-validation col-md-8 bg-light" novalidate action="select">
    <div id="Cliente">
        <div class="col-md-6">
            <h2>Cliente</h2>
            <div class="col-md-6">
                <label for="modalId" class="form-label">Codigo: </label>
                <input type="text" class="form-control" id="modalId" name="modalId" required value="<%= fornecedores.getId() %>">
            </div>
            <label for="modalNome" class="form-label">Nome: </label>
            <input type="text" class="form-control" id="modalNome" name="modalNome" required
             value="<%= request.getAttribute("modalNome") != null ? request.getAttribute("modalNome").toString() : "" %>">
        </div>
        <div class="col-md-6">
            <label for="modalCnpj" class="form-label">CPF: </label>
             <input type="text" class="form-control" id="modalCnpj" name="modalCnpj" required value="<%= request.getAttribute("modalCnpj") != null ? request.getAttribute("modalCnpj").toString() : "" %>">
        </div>
        <div class="col-md-6">
            <label for="modalEndereco" class="form-label">Endereço: </label>
             <input type="text" class="form-control" id="modalEndereco" name="modalEndereco" required value="<%= request.getAttribute("modalEndereco") != null ? request.getAttribute("modalEndereco").toString() : "" %>">
        </div>
        <div class="col-md-2">
            <label for="modalNumero" class="form-label">N°: </label>
            <input type="text" class="form-control" id="modalNumero" name="modalNumero" required value="<%= request.getAttribute("modalNumero") != null ? request.getAttribute("modalNumero").toString() : "" %>">
        </div>
        <div>
        
          <input class="btn btn-primary d-flex" type="submit" value="Pesquisar">
        
        </div>
    </div>
</form>

    <!--  <script>
     $(document).ready(function() {
    	    $("#modalId").on("keypress", function(event) {
    	        if (event.which === 13) {
    	            var numCnpj = $("#modalId").val();
    	            var server = "select";
    	            $.ajax({
    	                url: server,
    	                type: "GET",
    	                dataType: "json",
    	                data: { id: numCnpj },
    	                success: function(dados) {
    	                    console.log(dados);
    	                    // Verifique se os dados estão sendo corretamente recebidos
    	                    // e atribuídos aos campos do formulário
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

</script>--> 

       </main>
       </body>
       </html>
        