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
				<a href="#">
					<div id="teste" class="img_texto">
						Liquida Verão <span>Todas as peças com até 60% OFF</span>
					</div>
				</a>
				<div class="row caixa_imgs">
					<div class="col-6">
						<a href="#">
						<div id="teste3" >
							Para Ela
						</div>
					</a>
					</div>
					<div class="col-6">
						<a href="#">
						<div id="teste4" class="img_texto">
							Para Ele
						</div>
					</a>
					</div>
				</div>
			</div>
			<div class="col-6">
					<a href="#">
						<div id="teste2" class="img_texto">
							Outono Inverno 2018
						</div>
					</a>
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
					
					<c:forEach items="${produto.precos}" var="preco">
						<c:if test="${preco.tipo == 'ATUAL'}">
							<div class="preco_produto">${preco.valor }</div>
						</c:if>
						<c:if test="${preco.tipo == 'ANTIGO'}">
							<p class="preco_produto preco_antigo">${preco.valor }
						</c:if>
			        </c:forEach>
			
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