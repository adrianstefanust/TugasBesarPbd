<?php
class Login extends CI_Controller{
	function index(){
		$aData['title'] = "CRM - Login Site";
		$this->load->view('template/header', $aData);
		$this->load->view('page-login');
	}
	function attemptLogin(){
		$logged = true;
		if($logged){
			//SET SESSION
			redirect('/home');
		}
		else{
			$aData['title'] = "CRM - Login Site";
			$this->load->view('template/header', $aData);
			$this->load->view('page-login');
		}
	}
}
?>