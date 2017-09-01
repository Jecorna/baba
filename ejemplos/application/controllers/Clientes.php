<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clientes extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model("Clientes_model");
	}

	public function index(){
		$this->load->view("clientes");
	}

	public function mostrar()
	{	
		//valor a Buscar
		$buscar = $this->input->post("buscar");
		$numeropagina = $this->input->post("nropagina");
		$cantidad = $this->input->post("cantidad");
		
		$inicio = ($numeropagina -1)*$cantidad;
		$data = array(
			"clientes" => $this->Clientes_model->buscar($buscar,$inicio,$cantidad),
			"totalregistros" => count($this->Clientes_model->buscar($buscar)),
			"cantidad" =>$cantidad
			
		);
		echo json_encode($data);
	}
}