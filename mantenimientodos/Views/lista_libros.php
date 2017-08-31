
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mantenimiento</title>

    <link rel="stylesheet" href="../Resources/css/bootstrap.min.css">
    <link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
</head>

<body onload="lista_libros('','1');">
    <!--Barra de Navegacion-->
    <nav class="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Cambiar Navegacion</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand">Mantenimiento Institucional</a>
        </div>


    </nav>
    <div class="container">
         <div class="row form-horizontal">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_consultar" data-toggle="tab">Carga de archivos</a></li>
            </ul>
        </div>
        </br>
        <div class="tab-content">
            <div class="tab-pane active" id="tab_consultar">
                <div class="row form-horizontal">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">Carga</div>
                            <div class="panel-body">
                                <div class="form-group">
                                  <!--  <div class="col-xs-4  text-right">
                                        <label for="buscar" class="control-label">Buscar:</label>
                                    </div>
                                    <div class="col-xs-4">
                                        <input  type="text" name="buscar" id="buscar" class="form-control" onkeyup="lista_libros(this.value,'1');" placeholder="Ingrese nombre o descripcion"/>
                                    </div>-->
                                    <div class="col-xs-4">
                                        <a href="" class="btn btn-success" data-toggle='modal' data-target='#modallibros' id="abrir-modal-libros">Registrar Documento</a>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div id="lista"></div>
                                    <div id="paginador" class="text-center"></div>
                                </div>


                            </div>

                        </div>
                    </div>

                </div>
                <div class="modal fade" id="modallibros" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h2 class="modal-title">Datos del Documento</h2>
                            </div>
                            <div class="modal-body">
                                <div class="alert alert-success text-center" id="exito" style="display:none;">
                                    <span class="glyphicon glyphicon-ok"> </span><span> Su cuenta ha sido registrada</span>
                                </div>
                                <form class="form-horizontal" id="formLibro">
                                    <div class="form-group">
                                        <label for="procedimiento" class="control-label col-xs-5">Procedimiento :</label>
                                        <div class="col-xs-5">
                                            <input  type="hidden" id="idprocedimiento" name="idprocedimiento"/>
                                            <input id="procedimiento" name="procedimiento" type="text" class="form-control" placeholder="Ingrese tipo">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="caracter" class="control-label col-xs-5">Caracter :</label>
                                        <div class="col-xs-5">
                                            <input id="caracter" name="caracter"  type="text" class="form-control" placeholder="Nacional o Internacional">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="pini" class="control-label col-xs-5">Publicacion Inicio:</label>
                                        <div class="input-group date form_date col-md-5" data-date="yyyy MM dd" data-date-format="yyyy MM dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                          <input id="pini" name="pini" class="form-control" size="16" type="text" >
                                          <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                          <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                          </div>
                                        </div>
                                    <div class="form-group">
                                        <label for="pfin" class="control-label col-xs-5">Publicacion Fin:</label>
                                        <div class="input-group date form_date col-md-5" data-date="yyyy MM dd" data-date-format="yyyy MM dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                          <input id="pfin" name="pfin" class="form-control" size="16" type="text" >
                                          <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                          <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                          </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="rb" class="control-label col-xs-5">Revision de Bases:</label>
                                        <div  class="input-group date form_date col-md-5" data-date="yyyy MM dd" data-date-format="yyyy MM dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                          <input id="rb" name="rb" class="form-control" size="16" type="text" >
                                          <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                          <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                          </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="fndescarga" class="control-label col-xs-5">Fin de descarga:</label>
                                        <div class="input-group date form_date col-md-5" data-date="yyyy MM dd" data-date-format="yyyy MM dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                          <input id="fndescarga" name="fndescarga" class="form-control" size="16" type="text" >
                                          <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                          <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                          </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="li" class="control-label col-xs-5">Licitantes Invitados:</label>
                                        <div class="col-xs-5">
                                            <input id="li" name="li" type="text" class="form-control" placeholder="Ingrese Licitantes invitados / NA">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                      <select class="form-control" id="seccion" name="seccion">
                                        <option value="0">Selecciona una sección</option>
                                          <option value="A">Programa de adquisiciones, arrendamientos, servicios y obra pública del FCE</option>
                                          <option value="B">Publicación de proyectos de convocatorias a licitación pública</option>
                                          <option value="V">Programa anual de disposición final de bienes muebles</option>
                                          <option value="L">Licitaciones públicas</option>
                                          <option value="I">Invitación a cuando menos tres personas</option>
                                      </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="imagen" class="control-label col-xs-5">Documento:</label>
                                        <div class="col-xs-5">
                                            <input id="imagen" name="imagen" type="file">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-5">
                                            <input name="boton" type="hidden" value="guardar">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                <button type="button" class="btn btn-success" onclick="guardar();">Guardar</button>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->
            </div>

        </div><!-- tab content -->
    </div>

    <script src="../Resources/js/jquery-1.11.2.js"></script>
    <script src="../Resources/js/bootstrap.min.js"></script>
    <script src="../Resources/js/libros.js"></script>
    <script type="text/javascript" src="../Resources/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="../Resources/js/locales/bootstrap-datetimepicker.es.js" charset="UTF-8"></script>
    <script type="text/javascript">
        $('.form_datetime').datetimepicker({
            //language:  'fr',
            weekStart: 1,
            todayBtn:  1,
    		autoclose: 1,
    		todayHighlight: 1,
    		startView: 2,
    		forceParse: 0,
            showMeridian: 1
        });
    	$('.form_date').datetimepicker({
            language:  'es',
            weekStart: 1,
            todayBtn:  1,
    		autoclose: 1,
    		todayHighlight: 1,
    		startView: 2,
    		minView: 2,
    		forceParse: 0
        });
    	$('.form_time').datetimepicker({
            language:  'es',
            weekStart: 1,
            todayBtn:  1,
    		autoclose: 1,
    		todayHighlight: 1,
    		startView: 1,
    		minView: 0,
    		maxView: 1,
    		forceParse: 0
        });
    </script>
</body>
</html>
