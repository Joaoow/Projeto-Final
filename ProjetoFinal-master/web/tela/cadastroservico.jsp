<%-- 
    Document   : cadastrousuario
    Created on : 31/03/2022, 08:20:05
    Author     : sala305b
--%>
<%@page import="modelo.Servico"%>
<%@page import="modelo.Usuario"%>

<%
    String acao = "cadastrar", idservico = "", preco = "",modalidade = "", descricao ="", caminhoacao = "../ServicoServlet", dir = "../";

   Servico s = new Servico();
    if (request.getParameter("acao") != null) {

        if (request.getParameter("acao").equals("editar")) {

            dir = "../";

            idservico = request.getParameter("idservico");
            caminhoacao = "../ServicoServlet";
            boolean achou = s.BuscarPorId(idservico);
            if (!achou) {
                out.print("<script>"
                        + "window.alert('Cliente não Encontrado');"
                        + "</script>");
            } else {
                acao = "editar";
               idservico = String.valueOf(s.getId());
               preco = String.valueOf(s.getPreco());
               modalidade = s.getModalidade();
               descricao = s.getDescricao();
            }

        }

    }


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Cadastro </title>

        <!-- Required meta tags -->
        <meta cha-rset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="<%= dir%>css/bootstrap.css" >
        <link rel="stylesheet" href="../css/padrao/estilotelaservico.css" >
        <link rel="stylesheet" href="../css/padrao/estiloindex.css" >

    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div style="display:inline; float: left;">
                <a class="navbar-brand" href="index.jsp"><img src="<%= dir%>img/logoacademia128.png" width="128px" alt="imagem" /></a>
            </div>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!--Aqui é o menu da parte de cima da página web-->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="empresa.jsp"><h5>Empresa</h5> <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="atividades.jsp"><h5>Atividade</h5> <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="planos.jsp"><h5>Plano</h5> <span class="sr-only">(current)</span></a>
                    </li>
                 
                    <li class="nav-item ">
                        <a class="nav-link" href="faleconosco.jsp"><h5>Contato</h5> <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <img class="user" src="<%= dir%>img/user(4).png" width="50px" alt="imagem"> <span><%= responsavel%></span>

                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <a id="btn" class="btn btn-warning my-2 my-sm-0" href="loginmain.jsp">Entrar</a>
                </form>
            </div>

        </nav>  
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4">
                <form id="form-cadastro" action="<%=caminhoacao%>" method="POST">
                    <input type="hidden" name="acao" value="<%=acao%>">
                    <table style="margin-top: 30%;" border="0" cellspacing="0" cellpadding="5" class="ajustar">

                        <tr>

                            <td colspan="2">
                                <label for="">ID:</label><br/>
                                <input size="3" 
                                       value="<%= idservico%>"
                                       type="number" name="iduser"/> 

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="">Preço:</label><br/>
                                <input size="30"  value="<%= preco%>"
                                       type="text" name="responsavel" />
                            </td>

                        </tr>

                        <td>
                            <label for="">Modalidade:</label><br/>
                            <input size="30"  value="<%=modalidade%>"
                                   type="text" name="logincad" />
                        </td>
                        <td>
                            <label for="">Descrição:</label><br/>
                            <input size="30"  value="<%=descricao%>"
                                   type="password" name="senhacad" />
                        
                            <td colspan="2" align="center">
                                <input style="margin-right: 18%;" class="btn btn-primary" type="submit" value="<%=acao%>" />
                            </td>
                        </tr>
                    </table>
                </form>

            </div>
            <div class="col-4"></div>
        </div>             



        <!--Aqui é o roda pé e as informaçoes do roda pé-->
        <div class="row" style="margin-top: 10%;">

            <div class="col-12">
                <footer class="bg-dark text-light">
                    <div class="container-fluid py-3">
                        <div class="row">

                            <div class="col-12">

                                <div class="row">
                                    <div class="col-4">
                                        <ul class="nav flex-column">
                                            <li class="nav-link"><h5>Contato</h5></li>
                                            <li class="nav-link"><a href="#">(27)99923-2453</a></li>
                                            <li class="nav-link"><a href="#">NeverFat@gmail.com</a></li>
                                            <li class="nav-link"><a href="#"></a></li>

                                        </ul>

                                    </div>
                                    <div class="col-4">
                                        <ul class="nav flex-column text-center">
                                            <li class="nav-link"><h5>Horário de Funcionamento</h5></li>
                                            <li class="nav-link"><a href="#">Segunda á Sexta</a></li>
                                            <li class="nav-link"><a href="#">7:00 ás 22:00 hrs</a></li>

                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <ul class="nav flex-column float-right">
                                            <li class="nav-link"><h5>Redes Sociais</h5></li>

                                            <li class="nav-link">
                                                <img class="img" src="<%= dir%>img/instagram (1).png" width="32px" alt="imagem">
                                                <a href="#">@NeverFatDf</a></li>
                                            <li class="nav-link">
                                                <img class="img" src="<%= dir%>img/icons8-facebook-48.png" width="32px" alt="imagem">
                                                <a href="#">NeverFatOf</a></li>
                                        </ul>
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>


                    <!--finalização do roda pé com o ano atual -->
                    <div class="text-center" style="background-color: #333; padding: 20px;" >
                        Copyright © 2022 © Academia & Outsourcing | Todos os direitos reservados.
                    </div>
                </footer>
            </div>
        </div>

        <script type="text/javascript" src="<%= dir%>js/jquery.js"></script>
        <script type="text/javascript" src="<%= dir%>js/bootstrap.js"></script>
        <script type="text/javascript" src="<%= dir%>js/jquery.mask.js"></script>
        <script type="text/javascript">

            jQuery(document).ready(function ($) {

                $("#txtcpf").mask("000.000.000-00");

                $("#txtDddTelefone").mask("(00) 00000-0000");

            });







        </script>
    </body>
</html>
