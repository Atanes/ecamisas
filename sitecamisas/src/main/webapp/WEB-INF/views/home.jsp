<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="resources/img/" var="imagem" />

<tags:pageTemplate
	titulo="Camisas estilizadas para todos os generos....">

	<div class="container">
		<div id="fundo" class="text-center">
			<h1>O que você veste</h1>
			<h2>é o que você é</h2>
		</div>
		<div class="row">
			<div class="col-6">
				<div class="img_texto">
					<a href="#"> 
							Liquida Verão <span>Todas as peças com até 60% OFF</span>
					</a>
					<img src="${imagem}slide01.jpg"	alt="Liquida" />
				</div>
				<div class="row caixa_imgs">
					<div class="col-6">
						<div class="img_texto">
							<a href="${s:mvcUrl('HC#feminino').build()}"> 
								Para Ela
							</a>
							<img class="img_menu" src="${imagem}asset1.jpeg" alt="Liquida" />
						</div>
					</div>
					<div class="col-6">
						<div class="img_texto">
							<a href="${s:mvcUrl('HC#masculino').build()}"> 
								Para Ele
							</a>
							<img class="img_menu" src="${imagem}asset2.jpeg" alt="Liquida" />
						</div>
					</div>
				</div>
			</div>
			<div class="col-6">
				<div class="img_texto">
					<a href="#"> 
						Outono Inverno 2018
					</a>
					<img src="${imagem}slide02.jpg"	alt="Coleção Outono">
				</div>
			</div>
		</div>
		<h4 class="titulo titulo_bloco">Produtos em destaque</h4>
		<div class="row text-center">
			<!-- percorre produtos montando as linhas da tabela -->
			<c:forEach var="produto" items="${produtos}" varStatus="contador">

				<div class="col-md-3">
					<img class="rounded img_produto" src="${produto.url_imagem}"
						alt="${produto.genero }">
					<h3 class="desc_produto">${produto.descricao }</h3>
					<div class="preco_produto">${produto.preco_atual }</div>
					<c:if test="${not empty produto.preco_antigo}">
						<p class="preco_produto preco_antigo">${produto.preco_antigo }
					</c:if>
				</div>

			</c:forEach>
		</div>
		<div class="row">
			<div class="centered">
				<a href="#" class="btn btn-primary btn-lg botao_padrao">Veja
					mais produtos!!</a>
			</div>
		</div>
	</div>
</tags:pageTemplate>