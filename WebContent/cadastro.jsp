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
</head>
<body style="background-image:url(_IMAGENS/cartoriotabelionato.jpg);">
		<div>
			<h2 id="logo" class="link logo alura al-center">
							<span id="azul">Fazer</span>
					<span id="branco">Cadastro</span>
						<script type="text/javascript">
						setTimeout("document.getElementById('azul').className = 'azul'; document.getElementById('branco').className = 'branco'", 2000);
						</script>
			</h2>
		</div>
		<div class="container">
			<div class="row al-center">
			<div class="col-md-4 col-md-offset-4">

				<div class="panel-body">
					<form class="form-horizontal"  name="sigunp" method="post" action="_CONEXAO/processa.jsp">
							<fieldset>
														<!--Nome Completo --->
									<div class="form-group">
										<label for="nome" class="link">Nome Completo:</label><input class="form-control" required placeholder="Nome" name="nome" type="text" autofocus>
									</div>
														<!--Email --->
								<div class="form-group">
								 	 <label for="email" class="link">Email:</label><input class="form-control" required placeholder="Email" name="email" type="email" autofocus>
								</div>
														<!--Telefone --->
									<div class="form-group">
									 <label for="telefone" class="link">Telefone:</label><input  id="telefone" class="form-control" required placeholder="Telefone" name="telefone" type="tel" autofocus>
								</div>
														<!--Data --->
									<div class="form-group">
										<label for="idade" class="link">Data de Nascimento:</label><input class="form-control" id="date" required placeholder="Data de Nascimento" name="datanasc" type="text" autofocus/>
								</div>
													<!--Senha --->
									<div class="form-group">
									  <label for="password" class="link"> Senha</label><input class="form-control" required placeholder="Senha" name="senha" type="password" value="" />
									</div>
													<!--Confirmar Senha --->
									<div class="form-group">
									  <label for="password" class="link">Confirmar Senha:</label><input class="form-control" required placeholder="Senha" name="confirmsenha" type="password" value="">
									</div>
													<!--Checkbox --->
									<div class="checkbox">
													<input  name="termos" type="checkbox" value="Termos de LicenÃ§a"><a>Termos </a>
									</div>
													<!--Cadastre-se --->
									<div class="form-group">
													<input type="submit" value="Cadastre-se" value="cadastrar" class="btn btn-success btn-block"/>
									</div>
													<!--Sou cadastrado e Esqueci senha --->
									<div class="al-center">
									<a href="login.jsp">Já sou cadastrado</a><hr>
									<a href="esquecisenha.jsp">Esqueci minha senha</a><hr>
									</div>			
				    	</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
