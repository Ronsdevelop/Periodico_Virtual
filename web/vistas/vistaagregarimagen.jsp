<%-- 
    Document   : vistaagregarimagen
    Created on : 28/05/2019, 11:49:21 AM
    Author     : Richard
--%>

<%@page import="DAO.DiarioDAO"%>
<%@page import="MODEL.Diario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="../Plugins/assets/js/cargararchivo.js" type="text/javascript"></script>
    </head>
    <body>
    <body background="Imagen/fondo.jpg"> 

        <form name="formulario" action="../Servletnuevo"  method="POST"  enctype="multipart/form-data">
            <center> <h1>Diario</h1></center>
            <table align="center"
                <tbody>
                    
                    <tr>
                        <td>ID:</td>
                        <td><input type="text" name="cod" placeholder="Ingrese Codigo"></td>
                    </tr>
                    <tr>
                        <td>Diario:</td>
                        <td> <input type="text" name="nom" placeholder="Diario"></td>
                    </tr>
                    <tr>
                        <td>Descripcion</td>
                        <td> <input type="text" name="des" placeholder="Descripcion"></td>
                    </tr>
                    <tr>
                        <td>Codigo Genero</td>
                        <td><input type="text" name="gen" placeholder="Codigo Genero"></td>
                    </tr>
                    <tr>
                        <td>Imagen</td>
                        <td> <input type="file" name="archivo" size="20" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"> <input type="submit" class="btn-guardar" name="opcion" value="guardar"></td>
                    </tr>
                </tbody>
            </table>
            
            <hr> 
            </br>
        </form>
        
        <table width="800" border="2" align="center">
            <thead>
                <th>Id</th>
                <th>Nombre del Diario</th>
                <th>Descripcion</th>
                <th>Codigo Genero</th>
                <th>Foto Ruta</th>
                <th>Modificar</th>
                <th>Eliminar</th>

        </thead>
            <tbody>
            <% for (Diario d : DiarioDAO.listarDiario()) { %>	

            <tr>
                <td><%= d.getIdDiario()%></td>
                <td><%= d.getDiario() %></td>
                <td><%= d.getDescripcion()%></td>
                <td><%= d.getIdGenero() %></td>
                <td><img src="<%= d.getLogo() %>"  width="50" height="50"</div></td>
    
                <td><a href='modifar.jsp?Numero="<%= d.getIdDiario()%>"'><button type='button' class='btn btn-modificar'>Modificar</button></a></td>
                <td><a href='eliminar.jsp?numero="<%= d.getIdDiario()%>"'> <button type='button' class='btn btn-eliminar'>Eliminar</button></a></td>

            </tr>
            <%}%>
            </tbody>
        </table>

    </body>
</html>
