<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="resources/img/" var="imagem" />


<tags:pageTemplate titulo="Listagem de Contatos cadastrados">

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
	
		<h1 class="titulo titulo_form">Lista dos Contatos</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nome</th>
					<th scope="col">Email</th>
					<th scope="col">Telefone</th>
					<th scope="col">Assunto</th>
					<th scope="col">Mensagem</th>
					<th scope="col" colspan="2">Ações</th>
				</tr>
			</thead>
			<tbody>
			<!-- percorre contatos montando as linhas da tabela -->
              <c:forEach var="contato" items="${contatos}">
			<tr>
				<td>${contato.id}</td>
				<td>${contato.nome}</td>
				<td>
					<c:if test="${not empty contato.email}">
	                    <a href="mailto:${contato.email}">${contato.email}</a>
	                </c:if>
                </td>
				<td>
				<c:choose>
					<c:when test="${not empty contato.telefone}">
						${contato.telefone}
					</c:when>
						<c:otherwise>
	            			Telefone não informado
	        			</c:otherwise>
					</c:choose>
				</td>
				<td>${contato.assunto}</td>
				<td>${contato.mensagem}</td>
				<td>
		         	<a href="<c:url value='/excluirContato/'/>${contato.id}">
		         		<img class="img-responsive img_acoes" src="${imagem}Delete_Icon.png" title="Excluir"/>
					</a>
				</td>
				<td>
					<a href="${s:mvcUrl('CC#editarContato').arg(0, contato.id).build()}">
         				<img class="img-responsive img_acoes" src="${imagem}editar.png" title="Editar"/>
					</a>
       			</td>
			</tr>
			</c:forEach>
           </tbody>
		</table>
	</div>

</tags:pageTemplate>