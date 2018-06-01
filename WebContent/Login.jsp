<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="Negocio.Usuario" %>
<!DOCTYPE html> 
<html lang="pt-br">
<head>
	<title>Cadastre-se - Esciba Backup</title>
	<meta charset="utf-8">
	<c:import url="_CODIGOS/head.jsp"/>
	<!-- AQUI FICA O CABE�ARIO DA PAG�NA -->
	<c:import url="_CODIGOS/menu.jsp"/>
</head>
<body style="background-image:url(_IMAGENS/cartorio.jpg);">
							<!-- FAZER LIGON -->
						<div>
							<h2 id="logo" class="link logo alura al-center">
								<hr>
								<span id="azul">Fazer</span>
									<span id="preto">Login</span>
										<script type="text/javascript">
										setTimeout("document.getElementById('azul').className = 'azul'; document.getElementById('branco').className = 'branco'", 2000);
										</script>
							</h2>
						</div>
							<!-- DIVs FORMULÁRIO -->
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<div class="login-panel panel panel-default">
							<div class="panel-heading">
								<span class=""><center>Entre com o usuário</center></span>
									<script type="text/javascript">
										setTimeout("document.getElementById('azul').className = 'azul'; document.getElementById('branco').className = 'branco'", 2000);
										</script>
						</div>
							<div class="panel-body">
								
								<!--Formulário --->
								<form class="form-horizontal" action="controller.do" method="POST">
													<fieldset>
							<div class="form-group">
											<!--Email--->
											<label for="email" class="link">Nome</label><input class="form-control" placeholder="E-mail" name="username" type="text" autofocus>
							</div>
							<div class="form-group">
											<!--Senha--->
											<label for="password" class="link"> Senha</label><input class="form-control" required placeholder="Senha" name="password" type="password" value="">
							</div>
							<div class="checkbox">
								<input name="remember" type="checkbox" value="Remember Me"><a>Lembrar </a>
											</div>
											<!--Logar-se --->
							<div class="controls">
							<button type="submit" class="btn btn-lg btn-primary btn-block">Entrar</button>
							</div>
											<center>
											<a href="cadastro.jsp">Cadastre-se</a><hr >
											<a href="esquecisenha.jsp">Esqueci minha senha</a><hr>
											</center>
											<!--Fim Formulário --->
											</fieldset>
								</form>
							</div>
						</div>
					</div>
			 	</div>
			</div>
									<!-- FIM DIVs FORMULÁRIO -->


 </body>
</html>
