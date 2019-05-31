<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="DAO.Conexion"%> 
<%@page import="DAO.NoticiaDAO"%>  
<% DefaultTableModel data = new DefaultTableModel();%>
<% NoticiaDAO noti = new NoticiaDAO();
    Conexion cn = new Conexion();
    String cod = request.getParameter("codno");
%>

<% data = noti.detalleNoticia(cn.conectar(), cod);%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include  page="../base/head.jsp"/>
    </head>

    <style>
        .contenedor{
            position: relative;

            text-align: center;
        }
        .imgcenter{
            margin:10px auto;
            display:block;  
        }
        .texto{
            font-family: sans-serif;
        }

        .centrado{
            color:#FFFFFF;
            position: absolute;
            top: 80%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

    </style>


    <body class="hold-transition tapiz sidebar-mini">
        <div class="wrapper">
            <jsp:include page="../base/header.jsp" />

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        <i class="fa fa-home"></i>  DEPORTES

                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Deportes</a></li>
                        <li><a href="#">Principal</a></li>

                    </ol>
                </section>
                <!-- Main content -->
                <section class="content"> 
                    <div class="row">

                        <div class="contenedor">
                            <img src="<%= data.getValueAt(0, 8)%>" style="margin:10px auto;
                                 display:block;  " />

                            <div class="centrado"><h2><%= data.getValueAt(0, 2)%></h2></div>
                        </div>

                    </div>
                    <div class="container ">
                        <div class="row">
                            <div class="col-10">



                                <small style="font-size: medium; text-align: center"><%= data.getValueAt(0, 1)%></small>
                                <p style="font-size: smaller"><%= data.getValueAt(0, 6)%> </p>
                                <p> <%= data.getValueAt(0, 3)%></p>
                                <p><%= data.getValueAt(0, 4)%></p>
                                <video src="<%= data.getValueAt(0, 10)%>"></video>
                            </div>



                        </div>

                    </div>


                    <div class="row">
                        <div class="col-md-7">
                            <div class="well">
                                <h4>Deja un comentario</h4>
                                <form role="form" method="post" action="./?action=addcomment">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Nombre</label>
                                        <input type="text" name="name" required class="form-control" id="exampleInputEmail1" placeholder="Nombre">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Correo electronico</label>
                                        <input type="email" name="email" required class="form-control" id="exampleInputEmail1" placeholder="Correo Electronico">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Comentario</label>
                                        <textarea class="form-control" name="comment" required rows="4" placeholder="Escribe tu comentario ..."></textarea>
                                    </div>
                                    <input type="hidden" name="post_id" value="<?=$post->id;?>">
                                    <button type="submit" class="btn btn-default">Enviar comentario</button>
                                </form>
                            </div>
                        </div>
                    </div>







                </section>  



            </div>
            <jsp:include page="../base/footer.jsp" />

        </div>
        <jsp:include page="../base/scripts.html"  />       

    </body>
</html>

