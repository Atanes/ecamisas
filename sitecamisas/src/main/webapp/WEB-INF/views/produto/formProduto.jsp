<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<c:url value="resources/img/" var="imagem" />

<tags:pageTemplate titulo="Incluir e ou alterar um produto">

	<div class="container">
		<h1 class="titulo titulo_form">Cadastro de Produtos</h1>

		<form:form action="${s:mvcUrl('PC#cadastrarProduto').build()}" method="POST"
			enctype="multipart/form-data">

			<input type="hidden" name="id" value="${produto.id }" />
			<div class="form-group row">
				<label class="col-2 col-form-label" for="descricao">Descrição:</label>
				<input class="form-control col-10" type="text" name="descricao"
					placeholder="Digite uma descrição para o produto"
					value="${produto.descricao }" required />
					<form:errors path="descricao" />
			</div>

			<div class="form-group row">
				<label class="col-2 col-form-label" for="genero">Gênero</label> <select
					class="form-control col-4" name="genero" required>
					<option value="selecione">Selecione...</option>
					<option value="masculino" <c:if test="${produto.genero == 'masculino'}">selected="true"</c:if>>Masculino</option>
					<option value="feminino" <c:if test="${produto.genero == 'feminino'}">selected="true"</c:if>>Feminino</option>
					<option value="unissex" <c:if test="${produto.genero == 'unissex'}">selected="true"</c:if>>Unissex</option>
				</select>
			</div>

			<div class="form-group row">
				<label class="col-2 col-form-label" for="imagem">Imagem:</label> <input
					class="form-control col-10" type="file" name="imagem"
					value="${produto.url_imagem }" required />
			</div>
			
			<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			    <div class="form-group row">
			        <label class="col-2 col-form-label" for="precos[${status.index}].tipo">${tipoPreco.getDescricao()}</label>
			        <input class="form-control col-2" type="text" name="precos[${status.index}].valor" 
			        value="${produto.valorMoeda(produto.precos[status.index].valor) }" <c:if test="${status.index == 0}">required</c:if>>
			        <input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco}">
			    </div>
			</c:forEach>

			<div class="form-group row">
				<label class="col-2 col-form-label" for="estoque">Estoque:</label> <input
					class="form-control col-1" type="number" name="estoque"
					value="${produto.estoque}" />
			</div>

			<div class="checkbox">
				<label for="promocao"> 
					<input type="checkbox" name="promocao" <c:if test="${produto.promocao == true}">checked</c:if>> Promoção
				</label>
			</div>

			<div class="form-group row">
				<div class="offset-sm-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Enviar</button>
				</div>
			</div>
		</form:form>
		<label>${message}</label>
	</div>

</tags:pageTemplate>