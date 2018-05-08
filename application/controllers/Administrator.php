<?php
class Administrator extends CI_Controller{
	function index(){
		$aData['title'] = "CRM - Home Admin";
		$this->load->view('template/header', $aData);
		$this->load->view('home-admin');
	}
}
?>