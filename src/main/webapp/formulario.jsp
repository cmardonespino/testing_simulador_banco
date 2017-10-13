<%-- 
    Document   : formulario
    Created on : 12-10-2017, 17:13:15
    Author     : carl
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simulacion</title>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        <script>
            $(function () {
            $("#fecha").datepicker();
             });
            </script>
    </head>
    
    <body>
 

    
<form name="formulario" id="formulario" action="resultado.jsp"> 
        <center> 
       
       
                    <td colspan="2" bgcolor="#000099"><span class="Estilo1">Simulación de Credito de consumo</span></td>
                    <h1></h1>
                    <div>
               
                    <td width="164" bgcolor="#FFFF99"><span class="Estilo21">rut</span></td>
                    <input class="medium bold validateRut required errorSim" type="text"  name="rut" maxlength="13"onclick="activa(this.value)">
                     
                   
                    <em>Ej: 12851195-2</em>
                      
                        <td bgcolor="#FFFF99"><span class="Estilo21">Monto liquido Solicitar</span></td>
                 
                    <td bgcolor="#FFFF99"><input name="monto" type="text" maxlength="11" autocomplete="off"></td>
                           <em>Monto entre 500.000 y 100.000.000</em>

 <td>cantidad de cuotas:  </td>
<td><select name="cuota">
<option value="select"></option>
<%
    int n=6;
    String usertype;
while(n<=60)
{

usertype=Integer.toString(n);
n++;

%>
<option value=<%=n%>><%=n%></option>
<% }%>        
                   
 </select>  
               
<td for="fecha">Fecha de vencimiento: </td>
                    <input type="text" id="fecha" name="fecha" value="" />
                  
                  </div>

                      <button class="btn btn-primary btn-sm" style="text-align: center; margin-bottom: 5px  "
                                <a name="simular" type="submit" value="simular" style="text-align: center;color: white">simular
                                <span class="glyphicon glyphicon-ok"></span>
                            </a> </button>
                    </center>
                </form>   

       </body>
</html>
