<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="resources/img/" var="imagem" />

<tags:pageTemplate titulo="Camisas masculinas">

    <div class="container">
      <h4 class="titulo_bloco">Masculino</h4>
        
        <div class="row text-center">
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset22.png" alt="camiseta de the flash">
                    <h3 class="desc_produto">The Flash</h3>
                    <div class="preco_produto">R$ 50,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset23.png" alt="camiseta de Superman black">
                    <h3 class="desc_produto">Superman Black</h3>
                    <div class="preco_produto">R$ 55,00<p class="preco_produto preco_antigo">R$ 60,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset24.png" alt="camiseta com Wolverine">
                    <h3 class="desc_produto">Wolverine</h3>
                    <div class="preco_produto">R$ 55,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset10.png" alt="camiseta Muppets">
                    <h3 class="desc_produto">Harvard</h3>
                    <div class="preco_produto">R$ 90,00</div>
                </div>
            </div>
        
        <div class="row text-center">
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset26.png" alt="camiseta com Sapato All Star">
                    <h3 class="desc_produto">Sapato All Star</h3>
                    <div class="preco_produto">R$ 55,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset27.png" alt="camiseta com Banda Kiss">
                    <h3 class="desc_produto">Banda Kiss</h3>
                    <div class="preco_produto">R$ 75,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset28.png" alt="camiseta The will rock you">
                    <h3 class="desc_produto">The Will Rock You</h3>
                    <div class="preco_produto">R$ 75,00<p class="preco_produto preco_antigo">R$ 82,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset29.png" alt="camiseta duff">
                    <h3 class="desc_produto">Duff</h3>
                    <div class="preco_produto">R$ 85,00</div>
                </div>
            </div>
        
        <div class="row text-center">
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset30.png" alt="camiseta super man azul">
                    <h3 class="desc_produto">Superman</h3>
                    <div class="preco_produto">R$ 55,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset31.png" alt="camiseta banda aha">
                    <h3 class="desc_produto">Banda Aha</h3>
                    <div class="preco_produto">R$ 75,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset5.png" alt="camiseta com Coffe Potheads">
                    <h3 class="desc_produto">Coffe Potheads</h3>
                    <div class="preco_produto">R$ 65,00<p class="preco_produto preco_antigo">R$ 80,00</div>
                </div>
                <div class="col-md-3">
                    <img class="rounded img_produto" src="${imagem}asset25.png" alt="camiseta de Adidas">
                    <h3 class="desc_produto">Adidas</h3>
                    <div class="preco_produto">R$ 75,00</div>
                </div>
            </div>
      </div>
      
</tags:pageTemplate>