<?php
class Login extends CI_Controller{
	function index(){
		if(!$this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Login Site";
			$this->load->view('template/header', $aData);
			$this->load->view('page-login');
		}
		else{
			redirect('/home');
		}
	}
	function attemptLogin(){
		if(!$this->session->userdata('logged_in')){
			$this->load->model('ModelAdmin');
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			$loginData = $this->ModelAdmin->checkLogin($username, $password);
			if($loginData==NULL){
				$aData['title'] = "CRM - Login Site";
				$this->session->set_flashdata('error_login', "Invalid Username or Password");
				$this->load->view('template/header', $aData);
				$this->load->view('page-login');
				
			}
			else{
				$idAdmin = $this->ModelAdmin->getLoginItem($username, "id");
				$newdata = array(
        			'username'  => $username,
        			'idAdmin'  => $idAdmin,
        			'logged_in' => TRUE
				);
				$this->session->set_userdata($newdata);
				redirect('/home');
			}
		}
		else{
			redirect('/home');
		}
	}
}
?>