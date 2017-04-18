<%-- 
    Document   : amortizacao-americana
    Created on : 15/04/2017, 05:35:55
    Author     : milton
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Amortização Americano</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet">
        

    <link href="css/logo-nav.css" rel="stylesheet">
	
	<link href="css/footer-basic-centered.css" rel="stylesheet">
        
    </head>
    <body>
       
        <%@include file="WEB-INF/jspf/nav.jspf"%>
        
        <!-- VÁRIAVEIS -->
          <%
              
 
       
        DecimalFormat df = new DecimalFormat("#.##");       
        double vlprincipal = 0 ; 
        double period = 0 ;
        double taxajrs=0;
        double taxajrsaux = 0;
        double prestacao = 0;
        double jurosaux = 0;
        double juros = 0;
        double valorprincipalmaisjuros = 0;
        double vlprincipalmaistaxavjrsaux = 0;
        
        
      
       
       
   
        
            try{period = Double.parseDouble(request.getParameter("periodo")); 
            taxajrs = Double.parseDouble(request.getParameter("juros")); 
            vlprincipal = Double.parseDouble(request.getParameter("valorprincipal"));
           
        
            }
            catch(Exception e){}
            
            
         %>
        <!--VARIÁVEIS -->
   
    <center>
        <h2>Sistema de Amortização Americano</h2>
       
         <form>
                <p>Valor Principal:<input type="text" name="valorprincipal"></p>
                <p>Período:<input type="text" name="periodo"><p/>
                <p>Taxa de Juros:<input type="text" name="juros"></p>  
                
                <input type="submit" value="Enviar">
        
                 <table border="3">
    
                <tr> <th><h4>Nº Prestação</h4></th>  <th><h4>Saldo</h4></th>  <th><h4>Amortização</h4></th>  <th><h4>Juros</h4></th>  <th><h4>Prestação</h4></th> </tr> 
                    
            <!-- Repetição das celulas da tabela -->
                    <%for(int i=1; i<= period; i++){%>
                          <h3><tr>
                     <% taxajrsaux = (vlprincipal * (taxajrs/100));
                        prestacao = (vlprincipal * (taxajrs/100));%>
                             
                    <% if (i < period){ %>
                      <td><h4> <%=i%> </h4></td>
                      <td><h4> <%= df.format(vlprincipal) %> </h4></td>
                      <td><h4> <%= 0 %> </h4></td>
                      <td><h4> <%= df.format(taxajrsaux)%> </h4></td>
                      <td><h4> <%= df.format(prestacao) %> </h4></td>
                          
                    <% } else { %>                     
                    <%vlprincipalmaistaxavjrsaux = vlprincipal + taxajrsaux;%>
                      <td><h4> <%= i %> </h4></td>
                      <td><h4>  ---  </h4></td>
                      <td><h4> <%= df.format(vlprincipal) %> </h4></td>
                      <td><h4> <%= df.format(taxajrsaux) %> </h4></td>
                      <td><h4> <%= df.format(vlprincipalmaistaxavjrsaux) %> </h4></td>                    
                    
                    <%}%>
                    <%}%>
                    </tr>
                 </table>

                    <%juros = taxajrsaux * period;
                    valorprincipalmaisjuros = vlprincipal + juros;
                         %>
                           <h4>Relatório</h4> 
                           <h4>Amortização : <%= df.format(vlprincipal) %></h4>
                           <h4>Total Juros : <%= df.format(juros) %> </h4>
                           <h4>Prestação : <%= df.format(valorprincipalmaisjuros) %> </h4>                 
                 
        <br>
        <form action="home.jsp">
        <input type="submit" value="Voltar">
        
        <%@include file="WEB-INF/jspf/foot.jspf"%>
    </body>
</html>
