<%-- 
    Document   : home
    Created on : 15/04/2017, 05:35:19
    Author     : milton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        
            <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/logo-nav.css" rel="stylesheet">
	
	<link href="css/footer-basic-centered.css" rel="stylesheet">
        
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/nav.jspf"%>
        
        
          <!-- Page Content -->
     <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <center>
        
                    <p><h2><b>Projeto 03</b></h2></p>
					<br>
                                        <p><h2><b>Disciplina:</b> Programação orientada a objetos</p></h2> 
					<br>
					<p><h2><b>Docente:</b> Ricardo pupo larguesa</h2></p>
					<br>
                                        <h2><p><b>Integrantes:</b></p></h2>
					 <br>
					 <h2><p>Milton Junior</p></h2>
					 <br>
					 <h2><p>Gustavo Araújo</p></h2>
					 </center>
				
				<br>
				<br>
				
				<div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><a href="amortizacao-constante.html">Sistema de Amortização Constante</a></h4>
                    </div>
                    <div class="panel-body">
                        <p>O Sistema de Amortização Constante (SAC) é uma forma de amortização de um empréstimo por prestações que incluem os juros, amortizando assim partes iguais do valor total do empréstimo.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><a href="amortizacao-americana.html">Sistema de Amortização Americano</a></h4>
                    </div>
                    <div class="panel-body">
                        <p>O Sistema de Amortização Americano é uma forma de pagamento de empréstimos que se caracteriza pelo pagamento apenas dos juros da dívida,deixando o valor da dívida constante, que pode ser paga em apenas um único pagamento.</p>

                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4><a href="tabela-price.html">Tabela Price</a></h4>
                    </div>
                    <div class="panel-body">
                        <p>Tabela Price, também chamado de sistema francês de amortização, é um método usado em amortização de empréstimo cuja principal característica é apresentar prestações (ou parcelas) iguais.</p>
            </div>
        </div>
    </div>
        
                                <br>
                                <br>
                                 <br>
                                <br>
                                 <br>
                                <br>
                                 <br>
                                <br>
        <%@include file="WEB-INF/jspf/foot.jspf"%>
        
    </body>
</html>
