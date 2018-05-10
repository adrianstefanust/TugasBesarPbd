<?php
class Login extends CI_Controller{
	function index(){
		$aData['title'] = "CRM - Login Site";
		$this->load->view('template/header', $aData);
		$this->load->view('page-login');
	}
	function attemptLogin(){
		
		$this->load->model('ModelAdmin');
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		//die($password);
		$logged = $this->ModelAdmin->checkLogin($username, $password);
		//die($logged);
		if($logged=='true'){
			//SET SESSION
			$idAdmin = $this->ModelAdmin->getLoginItem($username, "id");
			$newdata = array(
        		'username'  => $username,
        		'idAdmin'  => $idAdmin,
        		'logged_in' => TRUE
			);
			$this->session->set_userdata($newdata);
			redirect('/home');
		}
		else{
			$aData['title'] = "CRM - Login Site";
			$this->session->set_flashdata('error_login', "$logged");
			$this->load->view('template/header', $aData);
			$this->load->view('page-login');
		}
	}
}
?>