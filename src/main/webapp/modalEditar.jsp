<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Fornecedores</title>
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
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">

							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h1 class="modal-title" id="exampleModalLabel">Editar
											Fornecedor</h1>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body" id="detalhesFornecedor">
										<form name="editaForm" action="editarFuncionario" class="form-inline" method="post">
											<div class="mb-3">

												<input type="hidden" id="modalId" class="form-control" name="modalId"
													required value="<%out.print(request.getAttribute("modalId"));%>">
											</div>


											<div class="mb-3">

												<label for="nome" class="form-label">Nome:</label> <input
													type="text" id="modalNome" class="form-control" name="modalNome"
													required
													value="<%out.print(request.getAttribute("modalNome"));%>">
											</div>

											<div class="mb-3">
												<label for="cnpj" class="form-label">Cnpj:</label> <input
													type="text" id="modalCnpj" class="form-control" name="modalCnpj"
													required
													value="<%out.print(request.getAttribute("modalCnpj"));%>">
											</div>
											<div class="mb-3">
												<label for="email" class="form-label">Email:</label> <input
													type="text" id="modalEmail" class="form-control" name="modalEmail"
													required
													value="<%out.print(request.getAttribute("modalEmail"));%>">
											</div>
											<div class="mb-3">
												<label for="celular" class="form-label">Celular/Whats:</label>
												<input type="text" class="form-control cel-sp-mask"
													placeholder="Ex.: (00) 00000-0000" id="modalCelular"
													name="modalCelular"
													value="<%=request.getAttribute("modalCelular")%>">
											</div>
											<div class="mb-3">
												<label for="telefone" class="form-label">Telefone:</label> <input
													type="text" id="modalTelefone" name="modalTelefone"
													class="form-control cel-sp-mask"
													placeholder="Ex.: (00) 00000-0000"
													value="<%out.print(request.getAttribute("modalEmail"));%>">
											</div>
											<div class="mb-3">
												<label for="cep" class="form-label">CEP:</label> <input
													type="text" class="form-control"
													placeholder="Presione ENTER para pesquisar CEP automaticamente"
													id="modalCep" name="modalCep" required
													value="<%out.print(request.getAttribute("modalEmail"));%>">
											</div>
											<div class="mb-3">
												<label for="endereco" class="form-label">Endereço:</label> <input
													type="text" class="form-control" id="modalEndereco"
													name="modalEndereco"
													value="<%out.print(request.getAttribute("modalEmail"));%>">
											</div>
											<div class="mb-3">
												<label for="numero" class="form-label">N°:</label> <input
													type="text" class="form-control" id="modalNumero" name="modalNumero"
													value="<%out.print(request.getAttribute("modalEmail"));%>">
											</div>
											<div class="mb-3">
												<label for="bairro" class="form-label">Bairro:</label> <input
													type="text" class="form-control" id="modalBairro" name="modalBairro"
													value="<%=request.getAttribute("modalBairro")%>">
											</div>
											<div class="mb-3">
												<label for="cidade" class="form-label">Cidade:</label> <input
													type="text" class="form-control" id="modalCidade" name="modalCidade"
													value="<%out.print(request.getAttribute("modalEmail"));%>">
											</div>
											<div class="mb-3">
												<label for="complemento" class="form-label">Complemento:</label>
												<input type="text" class="form-control" id="modalComplemento"
													name="modalComplemento"
													value="<%out.print(request.getAttribute("modalEmail"));%>"
													required>
											</div>
											<div class="mb-3">
												<label for="fornecedor" class="form-label">Estado:</label> <select
													name="modalEstado" class="form-select" id="modalEstado">
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
												</select>

											</div>


										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Fechar</button>
										<button type="button" class="btn btn-primary">Salvar</button>
									</div>
								</div>
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