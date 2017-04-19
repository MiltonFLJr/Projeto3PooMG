<%-- 
    Document   : tabela-price
    Created on : 15/04/2017, 05:36:13
    Author     : milton
--%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.NumberFormat" %>
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
              
 
       
        DecimalFormat df = new DecimalFormat("#.##");       
        double vlp = 0 ; 
        double parcelas = 0 ;
        double txjrs=0;
        double saldodevedor = 0;
        double amortizacao=0;
        double jurosperiodo=0;
        double prestacao = 0;
        double txjrsdivcem1 = 0;
        double txjrsdivcem2 = 0;
        double prestacaoaux = 0;
        double primeiraamortizacao = 0;
       double totalprestacao = 0;
        double totaljuros = 0;
        double totalamortizacao = 0;
        double totalsaldodevedor = 0;
   
        
            try{parcelas = Double.parseDouble(request.getParameter("periodo")); 
            txjrs = Double.parseDouble(request.getParameter("juros")); 
            vlp = Double.parseDouble(request.getParameter("valorprincipal"));
             saldodevedor = vlp;
            
            }
            catch(Exception e){}
            
            
         %>

            
 
        <!--VARIÁVEIS -->
        
    <center>
        <h2>Tabela Price</h2>
        
        
         <br>
            <form>
                <p>Valor Principal:<input type="text" name="valorprincipal"></p>
                <p>Parcelas:<input type="text" name="periodo"><p/>
                <p>Taxa de Juros em %:<input type="text" name="juros"></p>  
                
                <input type="submit" value="Enviar">
            </form>
          <br>
             
         
  <table border="3">
          
              <tr> <th><h4>Período(mês)</h4></th>  <th><h4>Prestação</h4></th>  <th><h4> Juros </h4></th>  <th><h4> Amortizacao </h4></th>  <th><h4> Saldo devedor </h4></th> </tr> 
              
                    
        
         
            <!-- Repetição das celulas da tabela -->            
            
                   <%for(int i=1; i<= parcelas; i++){%>
              
                    <%  txjrsdivcem1 = txjrs/100;
                  txjrsdivcem2 = 1 + txjrsdivcem1;
                  prestacaoaux = Math.pow(txjrsdivcem2, parcelas);        
                 prestacao = vlp * (prestacaoaux * txjrsdivcem1)/(prestacaoaux - 1);
                 jurosperiodo = saldodevedor * txjrsdivcem1 ;
                 amortizacao = prestacao - jurosperiodo;
                 saldodevedor = saldodevedor - amortizacao;
                 
   totalprestacao = totalprestacao + prestacao;    
              totaljuros = totaljuros + jurosperiodo;
              totalamortizacao = totalamortizacao + amortizacao;
              totalsaldodevedor = totalsaldodevedor + saldodevedor;
                 
                                %>
           
                       <tr>
                      <td><h4> <%= i %> </h4></td>
                      <td><h4> <%= df.format(prestacao) %> </h4></td>
                      <td><h4> <%= df.format(jurosperiodo) %> </h4></td>
                      <td><h4> <%= df.format(amortizacao) %> </h4></td>
                      <td><h4> <%= df.format(saldodevedor) %> </h4></td>
           
         
           
               
                <%}%>
           </table>
                    
                    <h4>Total</h4>
                          <h4>Prestação:</h4> 
                          <h4><%=df.format(totalprestacao)%></h4>
                          <h4>Juros:</h4>
                          <h4><%=df.format(totaljuros)%></h4>
                          <h4>Amortização:</h4>
                          <h4><%=df.format(totalamortizacao)%></h4>
                    
        
        <br>
        <form action="home.jsp">
        <input type="submit" value="Voltar">
        
        <%@include file="WEB-INF/jspf/foot.jspf"%>
        
    </body>
</html>