<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tags:pageTemplate titulo="Camisas femininas">

	<div class="container">
		<p class="titulo titulo_form">Camisas Femininas</p>
		<div class="row text-center">
			<!-- percorre produtos exibindo cada produto na tela, sendo 4 por linha -->
			<c:forEach var="produto" items="${produtos}" varStatus="contador">

				<div class="col-md-3">
					<img class="rounded img_produto" src="${produto.url_imagem}">
					<h3 class="desc_produto">${produto.descricao }</h3>
					<div class="preco_produto">${produto.preco_atual }</div>
					<c:if test="${not empty produto.preco_antigo}">
						<p class="preco_produto preco_antigo">${produto.preco_antigo }
					</c:if>
				</div>

			</c:forEach>
		</div>
	</div>

</tags:pageTemplate>