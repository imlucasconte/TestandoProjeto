<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="Negocio.Usuario" %>
<!DOCTYPE html> 
<html lang="pt-br">
<head>
	<title>Cadastre-se - Esciba Backup</title>
	<meta charset="utf-8">
	<c:import url="_CODIGOS/head.jsp"/>
	<!-- AQUI FICA O CABEÇARIO DA PAGÍNA -->
	<c:import url="_CODIGOS/menu.jsp"/>
	    <link rel="stylesheet" href="_CSS/bootstrap.css">
	     <link href="_CsS/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="_CSS/slider.css">
</head>
<body>
		  <!-- ======================== INICIO DO SLIDER ======================== -->
          <div class="slider_content">
              <section class="slider">
          <div class="slider_box">
              <!--Imagem 01 -->
                  <article class="slider_item active"slider-bg="_IMAGENS/cartoriotabelionato.jpg">
          <div class="slider_content">
		              <h1>REGISTRO DE IMOVEIS</h1>
		              <p>  GABY ESCREVER AQUII !!</p>
          </div>
                  </article>
              <!--Imagem 02 -->
              <article class="slider_item" slider-bg="_IMAGENS/biometria.jpeg">
		          <div class="slider_content">
		              <h1>2 JAVASCRIPT NA VEIA</h1>
		              <p>GABY ESCREVER AQUII !!</p>
		          </div>
                  </article>
              <!--Imagem 03 -->
                  <article class="slider_item" slider-bg="_IMAGENS/cartorio.jpg">
          <div class="slider_content">
		              <h1>REGISTRO CÃ�VIL DE PESSOAS NATURAIS</h1>
		              <p>GABY ESCREVER AQUII !!</p>
          </div>
                  </article>
          </div>
          <div class="slider-prev"><</div>
        <div class="slider-next">></div>
              </section>
              </div>
                    <!-- ========================  FIM DO SLIDER ========================  -->
                              <!-- COMO FUNCIONA O TRABALHO -->
		
			<div class="container">
				<div><a>
								</a></div>
			</div>
		
                              <!-- IMAGEM DO PREDIO -->
        <div class="ind-img">
          <img src="_IMAGENS/cartorio.jpg">
          </div>
                              <!-- == RODAPE =-->
			<c:import url="_CODIGOS/rodape.jsp"/>
      <script src="_JS/jquery.js"></script>
      <script src="_JS/slider.js"></script>
</body>
</html>


















