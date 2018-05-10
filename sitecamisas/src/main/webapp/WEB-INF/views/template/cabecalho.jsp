<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<div class="row texto_endereco">
		<div class="col-md-6">
			<p>Avenida Ramiro Corleone, 151 - Vila Dora - Santo André</p>
		</div>
		<div class="col-md-6 text-right">
			<p>
				Telefones: <span class="grif">11 2381-4000 / 11 2381-4001</span>
			</p>
		</div>
	</div>
	<nav class="navbar navbar-default navbar-expand-sm justify-content-center">
	<a class="navbar-brand d-flex w-50 mr-auto"
		href="${s:mvcUrl('HC#index').build()}"><img class="img_logo"
		src="${imagem}asset0.png" alt="Logo da loja camiseta"></a>
	<div class="navbar-collapse collapse w-100" id="collapsingNavbar3">
		<ul class="navbar-nav mx-auto w-100 justify-content-center">
			<li class="nav-item"><a class="nav-link"
				href="${s:mvcUrl('HC#index').build()}">Home</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${s:mvcUrl('HC#sobrenos').build()}">Sobre Nós</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${s:mvcUrl('HC#feminino').build()}">Feminino</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${s:mvcUrl('HC#masculino').build()}">Masculino</a></li>
			<li class="nav-item"><a class="nav-link" href="${s:mvcUrl('PC#cadProduto').build()}">Produto</a>
			</li>
		</ul>
		<ul class="nav navbar-nav ml-auto w-100 justify-content-end">
			<li class="nav-item"><a class="nav-link" href="${s:mvcUrl('CC#cadContato').build()}">Contato</a>
			</li>
		</ul>
	</div>
	</nav>