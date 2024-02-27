<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Model.Fornecedores"%>
<%@ page import="DAO.FornecedoresDAO"%>
<%@ page import="java.util.List"%>
<%
List<Fornecedores> lista; // Declara a lista
FornecedoresDAO dao = new FornecedoresDAO();
lista = dao.listaFornecedores();
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Fornecedores</title>
<link rel="icon"
    href="img/2992655_click_computer_currency_dollar_money_icon.png">
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
    crossorigin="anonymous">
<link rel="stylesheet"
    href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.css" />

</head>
<body>

	<%@ include file="menu.jsp"%>

	<div id="container" class="d-flex container-fluid">

		<!-- Formulário -->
		<div id="form-container" class="form-control form-control-sm m-0 ">
			<h2>Cadastro/Edição de Fornecedores</h2>
			<form name="cadastroFornecedores" action="insert" class="form-inline">
				<div class="mb-3">

					<input type="hidden" id="id" class="form-control" name="id"
						required value="">
				</div>


				<div class="mb-3">

					<label for="nome" class="form-label">Nome:</label> <input
						type="text" id="nome" class="form-control" name="nome" required
						value="">
				</div>

				<div class="mb-3">
					<label for="cnpj" class="form-label">Cnpj:</label> <input
						type="text" id="cnpj" class="form-control" name="cnpj" required
						value="">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email:</label> <input
						type="text" id="email" class="form-control" name="email" required
						value="">
				</div>
				<div class="mb-3">
					<label for="celular" class="form-label">Celular/Whats:</label> <input
						type="text" class="form-control cel-sp-mask"
						placeholder="Ex.: (00) 00000-0000" id="celular" name="celular"
						value="">
				</div>
				<div class="mb-3">
					<label for="telefone" class="form-label">Telefone:</label> <input
						type="text" id="telefone" name="telefone"
						class="form-control cel-sp-mask"
						placeholder="Ex.: (00) 00000-0000" value="">
				</div>
				<div class="mb-3">
					<label for="cep" class="form-label">CEP:</label> <input type="text"
						class="form-control"
						placeholder="Presione ENTER para pesquisar CEP automaticamente"
						id="cep" name="cep" required value="">
				</div>
				<div class="mb-3">
					<label for="endereco" class="form-label">Endereço:</label> <input
						type="text" class="form-control" id="endereco" name="endereco"
						value="">
				</div>
				<div class="mb-3">
					<label for="numero" class="form-label">N°:</label> <input
						type="text" class="form-control" id="numero" name="numero"
						value="">
				</div>
				<div class="mb-3">
					<label for="bairro" class="form-label">Bairro:</label> <input
						type="text" class="form-control" id="bairro" name="bairro"
						value="">
				</div>
				<div class="mb-3">
					<label for="cidade" class="form-label">Cidade:</label> <input
						type="text" class="form-control" id="cidade" name="cidade"
						value="">
				</div>
				<div class="mb-3">
					<label for="complemento" class="form-label">Complemento:</label> <input
						type="text" class="form-control" id="complemento"
						name="complemento" value="" required>
				</div>
				<div class="mb-3">
					<label for="fornecedor" class="form-label">Estado:</label> <select
						name="estado" class="form-select" id="estado">
						<option value="">Selecione o Estado</option>
						<option value="AC">Acre</option>
						<option value="AL">Alagoas</option>
						<option value="AP">Amapá</option>
						<option value="AM">Amazonas</option>
						<option value="BA">Bahia</option>
						<option value="CE">Ceará</option>
						<option value="DF">Distrito Federal</option>
						<option value="ES">Espírito Santo</option>
						<option value="GO">Goiás</option>
						<option value="MA">Maranhão</option>
						<option value="MT">Mato Grosso</option>
						<option value="MS">Mato Grosso do Sul</option>
						<option value="MG">Minas Gerais</option>
						<option value="PA">Pará</option>
						<option value="PB">Paraíba</option>
						<option value="PR">Paraná</option>
						<option value="PE">Pernambuco</option>
						<option value="PI">Piauí</option>
						<option value="RJ">Rio de Janeiro</option>
						<option value="RN">Rio Grande do Norte</option>
						<option value="RS">Rio Grande do Sul</option>
						<option value="RO">Rondônia</option>
						<option value="RR">Roraima</option>
						<option value="SC">Santa Catarina</option>
						<option value="SP">São Paulo</option>
						<option value="SE">Sergipe</option>
						<option value="TO">Tocantins</option>
						<option value="EX">Estrangeiro</option>
					</select>  <input type="submit" value="Salvar" class="btn btn-primary"
                        name="btnSalvar" id="btnSalvar"> <input type="button"
						value="Editar" class="btn btn-success" name="btnEditar"
						id="btnEditar"> <input type="button" value="Apagar"
						class="btn btn-danger" name="btnApagar" id="btnApagar">

				</div>


			</form>

		</div>
		<div class="container ">
			<div>
				<label for="pesquisa" class="form-label ">Pesquisa</label> <input
					type="text" class="col-md-3 d-flex align-items-center form-control"
					id="pesquisa" name="pesquisa"
					placeholder="Pesquisar fornecedor pelo nome">
				<div id="tables-container" class="container-sm">
					<div id="table-container" class="container-sm">
						<table class="table table-info table-bordered table-hover">
							<thead>
								<h2>Fornecedores Cadastrados</h2>
								<tr>
									<th scope="col">Nome</th>
									<th scope="col">Cnpj</th>
									<th scope="col">CEP</th>
									<th scope="col">Email</th>
									<th scope="col">Cel/Whats</th>
									<th scope="col">Telefone</th>
									<th scope="col">Endereço</th>
									<th scope="col">N°</th>
									<th scope="col">Bairro</th>
									<th scope="col">Cidade</th>
									<th scope="col">Estado</th>
									<th scope="col">Complemento</th>
									<th scope="col">Opções</th>

								</tr>
							</thead>
							<tbody>
								<%
								for (Fornecedores fornecedor : lista) {
								%>
								<tr id="row<%=fornecedor.getId()%>" class="linha-editar"
									data-id="<%=fornecedor.getId()%>">
									<td><%=fornecedor.getNome()%></td>
									<td><%=fornecedor.getCnpj()%></td>
									<td><%=fornecedor.getCep()%></td>
									<td><%=fornecedor.getEmail()%></td>
									<td><%=fornecedor.getCelular()%></td>
									<td><%=fornecedor.getTelefone()%></td>
									<td><%=fornecedor.getEndereco()%></td>
									<td><%=fornecedor.getNumero()%></td>
									<td><%=fornecedor.getBairro()%></td>
									<td><%=fornecedor.getCidade()%></td>
									<td><%=fornecedor.getUf()%></td>
									<td><%=fornecedor.getComplemento()%></td>
									<td><a type="button" href="select?id=<%=fornecedor.getId()%>"
                                            class="btn btn-success">Editar</a> <a
										type="button" class="btn btn-danger d-flex">Apagar</a></td>
								    </tr>
								
								<%
								}
								%>
							</tbody>
						</table>
						
					</div>
				</div>
				 
		

				<script
					src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
				<script
					src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.js"></script>
				<script
					src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
					integrity="sha384-RXv86ENklJWgi4LjvU41JiOoL12hSlq2y7WzBlxRvWj3Hda/1lMgB8Q5Q5MgMEQt"
					crossorigin="anonymous"></script>
				<script
					src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
					integrity="sha384-pPwws2xoEk4vkwfgpebF8a8FgsHfZ1NprH/1WTnWT2orxQ/1ouHkga5F88KYzBsM"
					crossorigin="anonymous"></script>

</body>
</html>
