<%-- 
    Document   : resultado
    Created on : 12-10-2017, 19:42:27
    Author     : carl
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.validadores"%>
<%@page import="modelo.cuotaM"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>resultado</title>
    </head>
    <body>
            <% String Rut = request.getParameter("rut");
            String Monto = request.getParameter("monto");
            String Cuota = request.getParameter("cuota");
            String Fecha = request.getParameter("fecha");
            
            cuotaM m = new cuotaM();
            validadores v= new validadores(); 
          
        if(Rut.equals("") || Monto.equals("") || Cuota.equals("") ||Fecha.equals("")  ){ %>
            <!-- out.println("<p>Debe llenar todos los campos</p>"); -->
            <p>Debe llenar todos los campos</p>
        <% }else{
            if(v.validadorRut(Rut)==true){
                Monto = v.validateMontoLiquido(Monto);
                if(!Monto.equals("")){ %>
                                        
                   <!--
                    out.println("rut: "+Rut+"\n Cuotas: "+Cuota+"\n"+m.calculadorCuota(Monto,Cuota));
                    out.print("pagar primera cuota en:"+Fecha); -->
                   <p>WENA</p>
                <% }else{ %>
                    <!-- out.println("<p>Ingrese un monto valido entre 500.000 y 100.000.000</p>"); -->
                    <p>Ingrese un monto valido entre 500.000 y 100.000.000</p>
                    <% }
            }else { %>
                <!--
                    out.println("ingrese un rut valido"); -->
                <p>Ingrese un rut valido</p>
            <% }
        }%>
        
    </body>
</html>
