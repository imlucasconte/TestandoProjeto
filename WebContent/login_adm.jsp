<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="Negocio.Usuario" %>
<!DOCTYPE html> 
<html lang="pt-br">
<head>
	<title>Cadastre-se - Esciba Backup</title>
	<meta charset="utf-8">
	<c:import url="_CODIGOS/head.jsp"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
  <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
  <link rel="stylesheet" type="text/css" href="_CSS/style.css">
</head>
<body style="background: url(_IMAGENS/cartorio.jpg);">
			<div class="modal-dialog text-center">
			<div class="col-sm-8 main-section">
				<div class="modal-content">
					<div class="col-12 user-img">
						<img src="_IMAGENS/face.png">
					</div>
					
					<form action="controller.do" method="post" class="col-12">
						<div class="form-group">
							<label for="exampleInputEmail1">Email</label>
			    			<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
						</div>				
						<div class="form-group">
							<label for="exampleInputPassword1">Senha</label>
			  			    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Senha">
						</div>
						<button class="btn btn-primary" type="submit"> Entrar </button>
						
						<div class="col-12 forgot"> 
						<a href="">Cadastre-se</a>
						</div>
						
					</form>
					
				 </div>
			</div>
		</div>
  

</body>
</html>
