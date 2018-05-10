<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="resources/img/" var="imagem" />

<tags:pageTemplate titulo="Camisas femininas">

	<div class="container">
		<h4 class="titulo_bloco">Masculino</h4>
		
		<div class="row text-center">
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset32.png" alt="camiseta da Minnie">
                    <h3 class="desc_produto">Minnie</h3>
                    <div class="preco_produto">R$ 50,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset34.png" alt="camiseta Baby Bones">
                    <h3 class="desc_produto">Baby Bones</h3>
                    <div class="preco_produto">R$ 45,00<p class="preco_produto preco_antigo">R$ 55,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset33.png" alt="camiseta capitão america feminina">
                    <h3 class="desc_produto">Capitão América</h3>
                    <div class="preco_produto">R$ 53,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset35.png" alt="camiseta Battle of the north">
                    <h3 class="desc_produto">Battle of the north</h3>
                    <div class="preco_produto">R$ 75,00</div>
                </div>
            </div>

			<div class="row text-center">
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset36.png" alt="camiseta Glasses">
                    <h3 class="desc_produto">Glasses</h3>
                    <div class="preco_produto">R$ 35,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset37.png" alt="camiseta league of legends feminina">
                    <h3 class="desc_produto">League of legends feminina</h3>
                    <div class="preco_produto">R$ 48,00<p class="preco_produto preco_antigo">R$ 57,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset38.png" alt="camiseta AC DC">
                    <h3 class="desc_produto">AC DC</h3>
                    <div class="preco_produto">R$ 23,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset39.png" alt="camiseta doctor whoo">
                    <h3 class="desc_produto">Doctor Whoo</h3>
                    <div class="preco_produto">R$ 75,00</div>
                </div>
            </div>
            
            <div class="row text-center">
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset40.png" alt="camiseta mulher maravilha">
                    <h3 class="desc_produto">Mulher maravilha</h3>
                    <div class="preco_produto">R$ 35,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset41.png" alt="camiseta one piece feminina">
                    <h3 class="desc_produto">One Piece Luffy</h3>
                    <div class="preco_produto">R$ 42,00<p class="preco_produto preco_antigo">R$ 54,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset42.png" alt="camiseta dva overwatch feminina">
                    <h3 class="desc_produto">Dva Overwatch</h3>
                    <div class="preco_produto">R$ 74,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset39.png" alt="camiseta i love rock n roll">
                    <h3 class="desc_produto">I Love Rock n Roll</h3>
                    <div class="preco_produto">R$ 65,00</div>
                </div>
            </div>
	</div>

</tags:pageTemplate>