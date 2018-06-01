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
	     <link href="_CSS/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="_CSS/slider.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Plataforma Administradora</title>

    <!-- Bootstrap core CSS -->
    <link href="_ADM/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="_ADM/css/simple-sidebar.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        Configurações
                    </a>
                </li>
                <li>
                    <a href="_ADM/dashboard.jsp">Dashboard</a>
                </li>
                <li>
                    <a href="#">Shortcuts</a>
                </li>
                <li>
                    <a href="#">Overview</a>
                </li>
                <li>
                    <a href="#">Eventos</a>
                </li>
                <li>
                    <a href="#">Sobre</a>
                </li>
                <li>
                    <a href="#">Solicitações</a>
                </li>
                <li>
                    <a href="_ADM/login_adm.jsp">Login</a>
                </li>
            </ul>
        </div>


        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
  
	                <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Botão Menu Administrativo</a>
            </div>
              
              	<c:import url="_ADM/dashboard.jsp"/>
             
        </div>


    </div>

    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="_JS/bootstrap.min.js"></script>

    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>

</html>