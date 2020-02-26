<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="Incluir e ou alterar um contato">
		
	<div class="container">
	  <h1 class="titulo titulo_form">Contato</h1>

	  <form action="/ecamisas/incluircontato" method="post">
	  		<input type="hidden" name="id" value="${contato.id }"/>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="nome">Nome:</label> <input
					class="form-control col-10" type="text" name="nome"
					placeholder="Digite seu nome completo" value="${contato.nome }" required />
			</div>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="email">E-mail:</label> <input
					class="form-control col-10" type="email" name="email"
					placeholder="Digite um e-mail válido" value="${contato.email }" required />
			</div>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="telefone">Telefone</label>
				<input class="form-control col-4" type="text" name="telefone"
					placeholder="(DDD) + Número de telefone" value="${contato.telefone }"/> 
					<label	class="col-2 col-form-label" for="assunto">Assunto</label>
					<select	class="form-control col-4" name="assunto" required>
					<option value="selecione">Selecione</option>
					<option value="camisetas-masculinas" <c:if test="${contato.assunto == 'camisetas-masculinas'}">selected="true"</c:if>>Camisetas Masculinas</option>
					<option value="camisetas-femininas" <c:if test="${contato.assunto == 'camisetas-femininas'}">selected="true"</c:if>>Camisetas Femininas</option>
					<option value="duvidas" <c:if test="${contato.assunto == 'duvidas'}">selected="true"</c:if>>Duvidas</option>
				</select>
			</div>
			<div class="form-group row">
				<label class="col-2 col-form-label" for="mensagem">Mensagem</label>
				<textarea class="form-control col-10" name="mensagem" required>${contato.mensagem }</textarea>
			</div>
			<div class="form-group row">
				<div class="offset-sm-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Enviar</button>
				</div>
			</div>
	   </form>
	</div>
	
	</tags:pageTemplate>