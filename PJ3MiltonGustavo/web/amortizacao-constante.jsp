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
        
           <!--VARIÁVEIS 
           i = váriavel contadora guardando o número de períodos
           vlp = valor principal
           per = período
           txjrs = taxa de juros
           jurosperiodo= juros por periodos
           totaljuros = total do juros por períodos
           amoortizacao = amortização
           amortizacaoaux = acumular o total da amortização
           prestacao= valor principal
           prestacaototal= total do valor das prestações(amortizações + juros por periodos)
           saldodevedor= valor principal decrescido-->
           <%
              
 
       
               
        double vlp = 0 ; 
        int per = 0 ;
        double txjrs=0;
        double jurosperiodo=0;
        double totaljuros = 0;
        double amortizacao = 0;
        double amortizacaoaux = 0;
        double prestacao = 0;
        double prestacaototal = 0;
       double saldodevedor = 0;
      
       
       
   
        
            try{per = Integer.parseInt(request.getParameter("periodo")); 
            txjrs = Integer.parseInt(request.getParameter("juros")); 
            vlp = Integer.parseInt(request.getParameter("valorprincipal"));
            amortizacao = vlp/per;
        
            }
            catch(Exception e){}
            
            
         %>

    <center>
        <h2><h2>Sistema de Amortização Constante</h2
           
            
            <br>
            <form>
                <p>Valor Principal:<input type="text" name="valorprincipal"></p>
                <p>Período:<input type="text" name="periodo"><p/>
                <p>Taxa de Juros:<input type="text" name="juros"></p>  
                
                <input type="submit" value="Enviar">
            </form>
            
            <!-- TABELA - INÍCIO -->
            <br>
            <h3>Tabela Sac</h3>
            <table border="2">
    
                <tr> <th><h4>Período</h4></th>  <th><h4>Juros</h4></th>  <th><h4>Prestação</h4></th>  <th><h4>Amortização</h4></th>  <th><h4>Saldo devedor</h4></th></tr> 
                    
            <!-- Repetição das celulas da tabela -->
                    <%for(int i=1; i<= per; i++){%>
                           <h3><tr>
                      <td><h4> <%=i%> </h4></td>
                      <td><h4> <%= jurosperiodo = (per-i+1)*(txjrs/100)*(amortizacao) %> </h4></td>
                      <td><h4> <%= prestacao = amortizacao+jurosperiodo %> </h4></td>
                      <td><h4> <%= amortizacao %> </h4></td>
                      <td><h4> <%=  saldodevedor = saldodevedor - vlp  %> </h4></td>
                          
                      
                           </tr>
                          
                      
           <%= amortizacaoaux = amortizacaoaux + amortizacao %>
                      <%= totaljuros = totaljuros + jurosperiodo %>
                      <%= prestacaototal =  prestacaototal + prestacao %> 
                      <%= prestacaototal =  prestacaototal + prestacao %> 
                      
                    <%}%>
               
                
               
            </table>
                 <!-- TABELA - FIM -->
                 <h4>Totais:</h4> 
                           <h4>Amortização : <%= amortizacaoaux %></h4>
                           <h4>Juros : <%= totaljuros %></h4>
                           <h4>Prestação : <%= prestacaototal %> </h4>
            
                <br>
               
        <form action="home.jsp">
        <input type="submit" value="Voltar">
        </form>
                
        <%@include file="WEB-INF/jspf/foot.jspf"%>
      
    </center>
    </body>
</html>
