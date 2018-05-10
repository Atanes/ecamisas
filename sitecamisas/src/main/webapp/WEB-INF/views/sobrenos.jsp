<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="resources/img/" var="imagem" />

<tags:pageTemplate titulo="sobre nós">
	
		<div class="container">
		<section class="box-9">
			<h1 class="titulo-cam">Sobre Nós</h1>
			<p>Nossa loja é mais do que apenas uma loja de camisetas. Nós vendemos não só produtos de alta qualidade, mas sim queremos dar aos nossos clientes uma experiência positiva de atendimento e alta qualidade em nossos produtos.</p>
			<h3 class="subtitulo-cam">O Designer</h3>
			<p>Gustavo Jones é um designer gráfico e ilustrador. O seu grande hobby é o design e ele vem trabalhando ao longo dos anos em inúmeras estampas de camisetas e hoje é o nosso principal design criativo.</p>
		</section>
		<hr/>
		<section id="imgdesigner" class="box-1">
		 <img src="${imagem}asset15.jpeg">
		</section>
		<hr/>
	</div>

</tags:pageTemplate>
