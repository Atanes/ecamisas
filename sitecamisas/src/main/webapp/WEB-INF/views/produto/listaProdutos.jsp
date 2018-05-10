<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="resources/img/" var="imagem" />


<tags:pageTemplate titulo="Listagem de Produtos cadastrados">

	<div class="container">
	
	<c:if test="${sucesso != null}">
			<div class="alert alert-success">
    			<strong>${sucesso}</strong>
			</div>
		</c:if>
		<c:if test="${message != null}">
			<div class="alert alert-danger">
    			<strong>${message}</strong>
			</div>
		</c:if>
	
		<h1 class="titulo titulo_form">Lista dos Produtos cadastrados</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Descrição</th>
					<th scope="col">Gênero</th>
					<th scope="col">Imagem</th>
					<th scope="col">Preço Atual</th>
					<th scope="col">Preço Antigo</th>
					<th scope="col" colspan="2">Ações</th>
				</tr>
			</thead>
			<tbody>
			<!-- percorre produtos montando as linhas da tabela -->
              <c:forEach var="produto" items="${produtos}">
			<tr>
				<td>${produto.id}</td>
				<td>${produto.descricao}</td>
				<td>${produto.genero}</td>
				<td>
					<img class="img_produto_lista" src="${produto.url_imagem}"/>
				</td>
				<td>${produto.valorMoeda(produto.preco_atual)}</td>
				<td>
				<c:choose>
					<c:when test="${not empty produto.preco_antigo}">
						${produto.valorMoeda(produto.preco_antigo)}
					</c:when>
						<c:otherwise>
	            			-
	        			</c:otherwise>
					</c:choose>
				</td>
				<td>
		         	<a href="<c:url value='/excluirproduto/'/>${produto.id}">
		         		<img class="img-responsive img_acoes" src="${imagem}Delete_Icon.png" title="Excluir"/>
					</a>
				</td>
				<td>
					<a href="${s:mvcUrl('PC#editarProduto').arg(0, produto.id).build()}">
         				<img class="img-responsive img_acoes" src="${imagem}editar.png" title="Editar"/>
					</a>
       			</td>
			</tr>
			</c:forEach>
           </tbody>
		</table>
	</div>
	
</tags:pageTemplate>