<?php
	require_once("../Models/libros.php");
	$boton= $_POST['boton'];
	if($boton==='buscar')
	{
		$inicio = 0;
        $limite = 3;
        if (isset($_POST['pagina'])) {
        	$pagina=$_POST['pagina'];
            $inicio = ($pagina - 1) * $limite;
        }
        $valor=$_POST['valor'];
		$ins=new libros();
		$a= $ins->lista_libros($valor);
		$b=count($a);
		$c= $ins->lista_libros($valor,$inicio,$limite);

		echo json_encode($c)."*".$b;
	}
	if($boton==='buscar2')
	{
		$pagina=0;
		$inicio = 0;
        if (isset($_POST['pagina'])) {
        	$pagina=$_POST['pagina'];
            $inicio = ($pagina - 1) * 1;
        }
		$ins=new libros();
		$a= $ins->paginar($inicio);
		$nro_rows = count($ins->paginar());
		$paginaAnt = $pagina-1;
		$paginaSig =$pagina+1;
		$datos = array("paginaAnt" => $paginaAnt, "paginaSig" => $paginaSig,"registro" => $a, "nro_rows"=>$nro_rows);
		/*$b=count($a);
		$c= $ins->lista_libros($valor,$inicio,$limite);*/

		echo json_encode($datos);
	}
	if ($boton==='guardar') {
		$inst = new libros();
		$idprocedimiento=$_POST['idprocedimiento'];
		$procedimiento=$_POST['procedimiento'];
		$caracter=$_POST['caracter'];
		$pini=$_POST['pini'];
		$pfin=$_POST['pfin'];
		$rb=$_POST['rb'];
		$fndescarga=$_POST['fndescarga'];
		$li=$_POST['li'];
		$seccion=$_POST['seccion'];

		if ($id!=="") {
			if($inst->actualizar($idprocedimiento, $procedimiento,$caracter,$pini,$pfin,$rb,$fndescarga,$li,$seccion)){
				echo 'exito';
			}
			else{
				echo "No se Actualizo los datos";
			}
		}
		else{
			$nombre_imagen = uniqid()."-".$_FILES["imagen"]["name"];
			$ruta = "../Resources/img/".$nombre_imagen;
				if(move_uploaded_file($_FILES["imagen"]["tmp_name"], $ruta))
				{
					if($inst->guardar($procedimiento,$caracter,$pini,$pfin,$rb,$fndescarga,$li,$seccion,$nombre_imagen)){
						echo 'exito'."-".$_FILES["imagen"]["type"];
					}
					else{
						echo "No se Guardo los datos";
					}
				}
				else{
					echo "No se pudo subir el archivo";
				}

		}

	}
	if($boton==='eliminar')
	{
		$idlib=$_POST['idlib'];
		$inst = new libros();
		if($inst->eliminar($idlib)){
			echo 'Se elimino correctamente';
		}
		else{
			echo "No se eliminar los datos";
		}
	}

?>
