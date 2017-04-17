<%-- 
    Document   : amortizacao-americana
    Created on : 15/04/2017, 05:35:55
    Author     : milton
--%>

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
              
 
       
               
        double vlprincipal = 0 ; 
        int period = 0 ;
        double taxajrs=0;
        
      
       
       
   
        
            try{period = Integer.parseInt(request.getParameter("periodo")); 
            taxajrs = Integer.parseInt(request.getParameter("juros")); 
            vlprincipal = Integer.parseInt(request.getParameter("valorprincipal"));
           
        
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
        
                 <table border="2">
    
                <tr> <th><h4>Nº Prestação</h4></th>  <th><h4>Amortização</h4></th>  <th><h4>Juros</h4></th>  <th><h4>Dívida</h4></th> </tr> 
                    
            <!-- Repetição das celulas da tabela -->
                    <%for(int i=1; i<= period; i++){%>
                           <h3><tr>
                      <td><h4> <%=i%> </h4></td>
                      <td><h4>  </h4></td>
                      <td><h4>  </h4></td>
                      <td><h4>  </h4></td>
                      <td><h4> </h4></td>
                          
                     
                           </tr>
                           <%}%>
                 </table>
                           
        <br>
        <form action="home.jsp">
        <input type="submit" value="Voltar">
        
        <%@include file="WEB-INF/jspf/foot.jspf"%>
    </body>
</html>
