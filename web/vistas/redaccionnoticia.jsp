<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="DAO.Conexion"%>
<%@page import="DAO.DeportesDao"%>
<%@page import="DAO.DiarioDAO"%>
<% DeportesDao de = new DeportesDao(); %>
<% DiarioDAO di = new DiarioDAO();%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include  page="../base/head.jsp"/>


    </head>

    <body class="hold-transition tapiz sidebar-mini">
        <div class="wrapper">
            <jsp:include page="../base/header.jsp" />

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        <i class="fa fa-newspaper-o"></i>  REDACTAR NOTICIA

                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Deportes</a></li>
                        <li><a href="#" >Principal</a></li>

                    </ol>
                </section>
                <!-- Main content -->

                <section class="content">

                    <!-- /.row -->
                    <form role="form" method="post" action=" " enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-lg-9">
                                <div class="box box-primary">
                                    <div class="box-body">
                                        <div >
                                            <div class="form-group">
                                                <label>Titulo</label>
                                                <input type="text" name="title" class="form-control input-lg" placeholder="Escriba titulo">
                                            </div>
                                            <div class="form-group">
                                          
                                                <input type="text" name="title" class="form-control input-sm" placeholder="Escriba Subtitulo">
                                            </div>
                                            <div class="form-group">
                                           
                                                <input type="text" name="entra" class="form-control input-sm" placeholder="Escriba Entradilla">
                                            </div>



                                            <div class="form-group">
                                                <label>Cuerpo de Noticia</label>
                                                <textarea class="form-control"  placeholder="Escriba contenido" rows="15" name="content" id="content"></textarea>
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" name="accept_comments" checked> Aceptar comentarios
                                                </label>

                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-3">                           


                                <div class="box box-primary">
                                    <div class="box-body">
                                        <h4>MULTIMEDIA</h4>
                                        <label> Adjuntar Imagen

                                            <input type="file" name="image">
                                        </label>


                                    </div>
                                    <div class="box-body">

                                        <label> Adjuntar Video

                                            <input type="text" class="form-control input-sm" placeholder="Url de Fuente de video" name="video">
                                        </label>


                                    </div>
                                </div>
                                <div class="box box-primary">
                                    <div class="box-body">
                                        <h4>FUENTE DE NOTICIA</h4>

                                        <input type="text" name="fuente" class="form-control input-sm" placeholder="Url de Fuente de Noticia">


                                    </div>

                                </div>

                                <div class="box box-primary">
                                    <div class="box-body">
                                        <h4>Publicar / guardar</h4>
                                        <label>
                                            Diario
                                        </label>
                                        <select name="status" required="" class="form-control">
                                            <option value="1">Diario 1</option>
                                            <option value="0">Diario 2</option>
                                        </select>
                                        <label>
                                            categoria
                                        </label>
                                        <select name="visibility" required="" class="form-control">
                                            <option value="1">Categoria 1</option>
                                            <option value="0">categoria 2</option>
                                        </select>
                                        <br>
                                        <button type="submit" class="btn btn-primary btn-block">Guardar</button>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </form>
                    <!-- /.row -->
                </section>


            </div>
            <jsp:include page="../base/footer.jsp" />

        </div>
        <jsp:include page="../base/scripts.html"  />  
        <script src="../Plugins/tinymce/tinymce.min.js"></script>

        <script>
            tinymce.init({selector: '#content',
                plugins: ['image charmap media paste code lists table visualblocks link preview']
            });
        </script>



    </body>
</html>

