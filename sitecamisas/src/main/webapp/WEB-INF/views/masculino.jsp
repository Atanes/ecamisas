<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="resources/img/" var="imagem" />

<tags:pageTemplate titulo="Camisas masculinas">

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
      </div>
      
</tags:pageTemplate>