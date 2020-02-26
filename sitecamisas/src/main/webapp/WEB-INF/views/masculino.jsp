<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="resources/img/asset0.png" var="imagem" />

<tags:pageTemplate titulo="Camisas masculinas">

	<link rel="stylesheet" href="resources/owlcarousel/assets/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/owlcarousel/assets/owl.theme.default.min.css">
	<link rel="stylesheet" href="resources/css/estilo.css">

	<!--<script src="jquery.min.js"></script>-->
	<script src="resources/vendors/jquery.min.js"></script>
	<script src="resources/owlcarousel/owl.carousel.js"></script>

    <div class="container">
      <p class="titulo titulo_form">Camisas Masculinas</p>
        
       <div class="row text-center">
			<!-- percorre produtos exibindo cada produto na tela, sendo 4 por linha -->
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
			<c:forEach var="produto" items="${produtosP}" varStatus="status">
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
      </div>
      
</tags:pageTemplate>