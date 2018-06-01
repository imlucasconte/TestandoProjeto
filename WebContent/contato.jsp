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
	    <link rel="stylesheet" href="_CSS/bootstrap.css">
	     <link href="_CSS/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="_CSS/slider.css">
</head>
<body>
                              <!-- == MENU =-->
          <style type="text/css">
           .fixed-panel {
                  min-height: 400px;
                  max-height: 400px;
      background-color: #19313c;
      color: white;
                  overflow: auto;


              }
              .media-list {

                overflow: auto;
        clear: both;
        display: table;
        overflow-wrap: break-word;
        word-wrap: break-word;
        word-break: normal;
        line-break: strict;
             }
        .panel {
        margin-bottom: 20px;
        background-color: #fff;
        border: 6px solid transparent;
        border-radius: 25px;
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        }
        .panel-info {
        border-color: #0c2735;
        }
        .panel-info>.panel-heading {
        color: #fff;
        background-color: #0c2735;
        border-color: #0c2735;
        }
        .panel-footer {
        padding: 10px 15px;
        background-color: #0c2735;
        border-top: 1px solid #0c2735;
        border-bottom-right-radius: 3px;
        border-bottom-left-radius: 3px;
        }

        body {
        /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#608f95+0,008588+9,0c2449+52,1a1e3b+100 */
        background: rgb(96,143,149); /* Old browsers */
        background: -moz-linear-gradient(-45deg, rgba(96,143,149,1) 0%, rgba(0,133,136,1) 9%, rgba(12,36,73,1) 52%, rgba(26,30,59,1) 100%); /* FF3.6-15 */
        background: -webkit-linear-gradient(-45deg, rgba(96,143,149,1) 0%,rgba(0,133,136,1) 9%,rgba(12,36,73,1) 52%,rgba(26,30,59,1) 100%); /* Chrome10-25,Safari5.1-6 */
        background: linear-gradient(135deg, rgba(96,143,149,1) 0%,rgba(0,133,136,1) 9%,rgba(12,36,73,1) 52%,rgba(26,30,59,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#608f95', endColorstr='#1a1e3b',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
        }

          </style>
      </head>
  <body>
          <div class="container background-color: rgb(255,0,255);">

              <div class="row">
                  <h3 class="text-center"><small><strong>Artificial</strong></small><font color="white"> Inteligencia!!! </font><small><strong> aqui</strong></small><font color="white"> Eu estou..</font></h3>

                  <div class="col-md-4 col-md-offset-4">

                      <div id="chatPanel" class="panel panel-info">
                          <div class="panel-heading">

                <strong><span class="glyphicon glyphicon-globe"></span> Fale Comigo !!!</strong>

              </div>
                          <div class="panel-body fixed-panel">
                              <ul class="media-list">
                              </ul>
                          </div>
                          <div class="panel-footer">
                              <form method="post" id="chatbot-form">
                                  <div class="input-group">
                                      <input type="text" class="form-control" placeholder="Enter Message" name="messageText" id="messageText" autofocus/>
                                      <span class="input-group-btn">
                                          <button class="btn btn-info" type="button" id="chatbot-form-btn">ENVIAR <span class="glyphicon glyphicon-hand-up"></span></button>
                                      </span>
                                  </div>
                              </form>
                          </div>
                      </div>
                  </div>

              </div>
          </div>

          <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
          <script>
          $(function() {
              $('#chatbot-form-btn').click(function(e) {
                  e.preventDefault();
                  $('#chatbot-form').submit();
              });

              $('#chatbot-form').submit(function(e) {
                  e.preventDefault();

                  var message = $('#messageText').val();
                  $(".media-list").append('<li class="media"><div class="media-body"><div class="media"><div class="media-body">' + message + '<hr/></div></div></div></li>');
                  $.ajax({
                      type: "POST",
                      url: "ask.js",
                      data: $(this).serialize(),
                      success: function(response) {
                          $('#messageText').val('');

                          var answer = response.answer;

                          const chatPanel = document.getElementById("chatPanel");
                          $(".media-list").append('<li class="media"><div class="media-body"><div class="media"><div class="media-body">' + answer + '<hr/></div></div></div></li>');
        $(".fixed-panel").stop().animate({ scrollTop: $(".fixed-panel")[0].scrollHeight}, 1000);

                      },
                      error: function(error) {
                          console.log(error);
                      }
                  });
              });
          });
          </script>
                              <!-- == RODAPE =-->
      <div>
<?php include_once('_CODIGOS/rodape.php');?>
      </div>
      <script src="_JS/jquery.js"></script>
      <script src="_JS/slider.js"></script>
</body>
</html>