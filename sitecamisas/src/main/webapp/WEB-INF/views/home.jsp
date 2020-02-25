<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="resources/img/asset0.png" var="imagem" />

<tags:pageTemplate
	titulo="Camisas estilizadas para todos os generos....">

	<link rel="stylesheet"
		href="resources/owlcarousel/assets/owl.carousel.min.css">
	<link rel="stylesheet"
		href="resources/owlcarousel/assets/owl.theme.default.min.css">
	<link rel="stylesheet" href="resources/css/estilo.css">

	<!--<script src="jquery.min.js"></script>-->
	<script src="resources/vendors/jquery.min.js"></script>
	<script src="resources/owlcarousel/owl.carousel.js"></script>

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
							<div id="teste3">Para Ela</div>
						</a>
					</div>
					<div class="col-6">
						<a href="#">
							<div id="teste4" class="img_texto">Para Ele</div>
						</a>
					</div>
				</div>
			</div>
			<div class="col-6">
				<a href="#">
					<div id="teste2" class="img_texto">Outono Inverno 2018</div>
				</a>
			</div>
		</div>
		<h4 class="titulo titulo_bloco">Produtos em destaque</h4>
		<div class="row text-center">
			<!-- percorre produtos montando as linhas da tabela -->
			<c:forEach var="produto" items="${produtos}" varStatus="contador">

				<div class="col-3">
					<div class="figura">
						<img src="${produto.url_imagem}" alt="${produto.genero }">
						<p class="desc_produto">${produto.descricao }</p>
						<p class="preco_produto">
							<c:forEach items="${produto.precos}" var="preco">							
								<c:if test="${preco.tipo == 'ATUAL'}">
									${produto.valorMoeda(preco.valor) }
								</c:if>
								<c:if test="${preco.tipo == 'ANTIGO'}">
									<span class="preco_antigo">${produto.valorMoeda(preco.valor) }</span>
								</c:if>							
							</c:forEach>
						</p>
					</div>
				</div>

			</c:forEach>
		</div>
		<h4 class="titulo titulo_bloco">Produtos com desconto</h4>
		<div class="owl-carousel owl-theme">
			<c:forEach var="produto" items="${produtos}" varStatus="status">
				<div class="item figura">
					<a href="#">
						<img src="${produto.url_imagem}" alt="${produto.genero }"/>
					</a>
					<p class="desc_produto">${produto.descricao }</p>
					<p class="preco_produto">
						<c:forEach items="${produto.precos}" var="preco">							
							<c:if test="${preco.tipo == 'ATUAL'}">
								${produto.valorMoeda(preco.valor) }
							</c:if>
							<c:if test="${preco.tipo == 'ANTIGO'}">
								<span class="preco_antigo">${produto.valorMoeda(preco.valor) }</span>
							</c:if>							
						</c:forEach>
					</p>
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
	
	<script>
            $(document).ready(function() {
              var owl = $('.owl-carousel');
              owl.owlCarousel({
                items: 4,
                loop: true,
                margin: 10,
                autoplay: true,
                autoplayTimeout: 1000,
                autoplayHoverPause: true
              });
              $('.play').on('click', function() {
                owl.trigger('play.owl.autoplay', [1000])
              })
              $('.stop').on('click', function() {
                owl.trigger('stop.owl.autoplay')
              })
            })
    </script>
</tags:pageTemplate>