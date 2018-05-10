<?php
class Administrator extends CI_Controller{
	function index(){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Home Admin";
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('home-admin');
		}
		else{
			redirect('/login');
		}
	}
	function logout(){
		if($this->session->userdata('logged_in')){
			$this->session->unset_userdata('username');
			$this->session->unset_userdata('idAdmin');
			$this->session->unset_userdata('logged_in');
			redirect('/login');
		}
		else{
			redirect('/login');
		}
		
	}
	function loadViewInsertAdmin(){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Insert Data Administrator";
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('form-insert-admin');
		}
		else{
			redirect('/login');
		}
	}
	function insertAdministrator(){
		if($this->session->userdata('logged_in')){
			$username = $this->input->post('usernameAdmin');
			$password = $this->input->post('passwordAdmin');
			$nama = $this->input->post('namaAdmin');
			$this->load->model('ModelAdmin');
			$this->ModelAdmin->insertAdministrator($username, $password, $nama);
			$this->session->set_flashdata('info_add', "Berhasil menambahkan Administrator Baru");
			redirect('/viewAdmin');
		}
		else{
			redirect('/login');
		}
	}
	function loadViewInsertCustomer(){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Insert Data Customer";
			$this->load->model('ModelLokasi');
			$res = $this->ModelLokasi->getLokasiKota();
			$aData['lokasi'] = json_decode(json_encode($res),true);
			//var_dump($aData['lokasi']);
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('form-insert-customer', $aData);
		}
		else{
			redirect('/login');
		}
		
	}
	function insertCustomer(){
		if($this->session->userdata('logged_in')){
			$nama = $this->input->post('namaCustomer');
			$idLokasi = $this->input->post('lokasi');
			$tanggalLahir = $this->input->post('tanggal_lahir');
			$alamat = $this->input->post('alamat');
			$nilaiInvestasi = $this->input->post('nilai_invest');
			$idAdmin = $this->session->userdata('idAdmin');
			$this->load->model('ModelCustomer');
			$this->ModelCustomer->insertCustomer($nama, $idLokasi, $tanggalLahir, $alamat, $nilaiInvestasi, $idAdmin);
			$this->session->set_flashdata('info_add', "Berhasil menambahkan Customer baru");
			redirect('/viewInsertCustomer');
		}
		else{
			redirect('/login');
		}
	}
	function loadViewHubungan(){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Insert Data Hubungan";
			
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('form-insert-hubungan');
		}
		else{
			redirect('/login');
		}
	}
	function insertHubunganBaru(){
		if($this->session->userdata('logged_in')){
			$namaHub = $this->input->post('nama_hubungan');
			$this->load->model('ModelHubungan');
			$this->ModelHubungan->insertHubungan($namaHub);
			$this->session->set_flashdata('info_add', "Berhasil menambahkan Hubungan baru");
			redirect('/viewHubungan');
		}
		else{
			redirect('/login');
		}
	}
	function loadViewInsertHubCustomer(){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Insert Data Hubungan Customer";
			$this->load->model('ModelHubungan');
			$this->load->model('ModelCustomer');
			$aData['listHubungan'] = $this->ModelHubungan->getJenisHubungan();
			$aData['listCustomer'] = $this->ModelCustomer->getAllCustomerData();
			$aData['listHubungan'] = json_decode(json_encode($aData['listHubungan']),true);
			$aData['listCustomer'] = json_decode(json_encode($aData['listCustomer']),true);
			//var_dump($aData['listHubungan']);
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('form-insert-hubungan-customer', $aData);
		}
		else{
			redirect('/login');
		}
	}
	function insertHubunganCustomer(){
		if($this->session->userdata('logged_in')){
			$idHub = $this->input->post('jenis_hubungan');
			$idCustomer1 = $this->input->post('customer1');
			$idCustomer2 = $this->input->post('customer2');
			$this->load->model('ModelCustomer');
			$this->ModelCustomer->insertHubunganCustomer($idHub, $idCustomer1, $idCustomer2);
			$this->session->set_flashdata('info_add', "Berhasil menambahkan Hubungan Customer baru");
			redirect('/viewHubunganCustomer');
		}
		else{
			redirect('/login');
		}
	}
	
}
?>