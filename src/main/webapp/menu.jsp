<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>teste menu</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
	<link rel="stylesheet" href="style.css">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>
<body>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<i class="bi bi-list" data-bs-toggle="offcanvas"
	
		href="#offcanvasExample" role="button"
		aria-controls="offcanvasExample" style="font-size: 60px;"></i>
	

	<div class="offcanvas offcanvas-start" tabindex="-1"
		id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasExampleLabel">Menu</h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
				aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">
			
			<div class="dropdown mt-3">
				
				<ul>
					<li class="item-men">
                <a class="dropdown-item" href="#">
                   <span class="icon"><i class="bi bi-house-up-fill"></i></span>
                   <span class="txt-link">Home</span>   
                </a>
            </li>
					 <li class="item-men">
                <a href="#">
                   <span class="icon"><i class="bi bi-backpack4"></i></span>
                   <span class="txt-link">Estoque</span>   
                </a>
            </li>
            <li class="item-men">
                <a href="#">
                   <span class="icon"><i class="bi bi-clock-history"></i></span>
                   <span class="txt-link">Historico</span>   
                </a>
            </li>
           

            <li class="item-men">
                <a href="#">
                   <span class="icon"><i class="bi bi-person"></i></span>
                   <span class="txt-link">Clientes</span>   
                </a>
            </li>
            <li class="item-men">
                <a href="#">
                   <span class="icon"><i class="bi bi-building-up"></i></span>
                   <span class="txt-link">Fornecedores</span>   
                </a>
            </li>
            <li class="item-men">
                <a href="#">
                   <span class="icon"><i class="bi bi-file-person"></i></span>
                   <span class="txt-link">Funcionario</span>   
                </a>
            </li>
            <li class="item-men">
                <a href="#">
                   <span class="icon"><i class="bi bi-box-fill"></i></span>
                   <span class="txt-link">Produtos</span>   
                </a>
            </li>
            <li class="item-men">
                <a href="#">
                   <span class="icon"><i class="bi bi-receipt"></i></span>
                   <span class="txt-link">Vendas</span>   
                </a>
            </li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
