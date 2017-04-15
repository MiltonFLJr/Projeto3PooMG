<%-- 
    Document   : amortizacao-constante
    Created on : 15/04/2017, 05:35:35
    Author     : milton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Amortização Constante</title>
        
            <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/logo-nav.css" rel="stylesheet">
	
	<link href="css/footer-basic-centered.css" rel="stylesheet">
        
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/nav.jspf"%>
        
    <center>
        <h2><h2>Sistema de Amortização Constante</h2>
            
            <br>
            <form>
                <p>Valor Principal:<input type="text" name="valorprincipal"></p>
                <p>Período:<input type="text" name="periodo"><p/>
                <p>Juros:<input type="text" name="juros"></p>  
                
                <input type="submit" value="Enviar">
                
                <br>
                <br>
        <form action="home.jsp">
        <input type="submit" value="Voltar">
        
        <%@include file="WEB-INF/jspf/foot.jspf"%>
        
    </body>
</html>
