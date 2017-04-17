<%-- 
    Document   : tabela-price
    Created on : 15/04/2017, 05:36:13
    Author     : milton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
        
            <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/logo-nav.css" rel="stylesheet">
	
	<link href="css/footer-basic-centered.css" rel="stylesheet">
        
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/nav.jspf"%>
        
            <!-- VÁRIAVEIS -->
          <%
              
 
       
               
        float vlprincipal = 0 ; 
        int period = 0 ;
        double taxajrs=0;
        double taxajrsaux = taxajrs;
        double parcel= 0 ;
        double amorti = 0;
        double saldodev = 0;
        
      
       
       
   
        
            try{period = Integer.parseInt(request.getParameter("periodo")); 
            taxajrs = Integer.parseInt(request.getParameter("juros")); 
            vlprincipal = Integer.parseInt(request.getParameter("valorprincipal")); 
            }
            catch(Exception e){}
            
            
         %>
        <!--VARIÁVEIS -->
        
    <center>
        <h2>Tabela Price</h2>
        
        
         <br>
            <form>
                <p>Valor Principal:<input type="text" name="valorprincipal"></p>
                <p>Período em Meses:<input type="text" name="periodo"><p/>
                <p>Taxa de Juros em %:<input type="text" name="juros"></p>
                
                <input type="submit" value="Enviar">
            </form>
             
         
            <table border="2">
         <tr> <th><h4>Período</h4></th>  <th><h4>Juros</h4></th>  <th><h4>Prestação</h4></th>  <th><h4>Amortização</h4></th>  <th><h4>Saldo devedor</h4></th></tr> 
                    
        
         
            <!-- Repetição das celulas da tabela -->
                    <%for(int i=0; i<= period; i++){%>
                        <% if (i <= 0){ %>
                    <h3><tr>
                      <td><h4> <%= 0 %> </h4></td>
                      <td><h4> <%= 0 %> </h4></td>
                      <td><h4> <%= 0 %>  </h4></td>
                      <td><h4> <%= 0 %></h4></td>
                      <td><h4> <%= saldodev = vlprincipal - saldodev %> </h4></td>
                       <% }else{ %>
           
                      <td><h4> <%=i%> </h4></td>
                      <td><h4> <%= taxajrsaux = ((taxajrs/100)*saldodev) %> </h4></td>
                      <td><h4> <%= parcel = (vlprincipal)/((Math.pow((1+(taxajrs/100)),period)-1)/(Math.pow((1+(taxajrs/100)),period*1))) %>  </h4></td>
                      <td><h4> </h4></td>
                      <td><h4> </h4></td>
                          
                      <% } %>
                    </h3></tr>
                           <%}%>
            </table>
                          
                    
        
        <br>
        <form action="home.jsp">
        <input type="submit" value="Voltar">
        
        <%@include file="WEB-INF/jspf/foot.jspf"%>
        
    </body>
</html>
