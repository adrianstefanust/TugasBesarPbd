<?php
class Administrator extends CI_Controller{
	function index(){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Home Admin";
			$this->load->model('ModelCustomer');
			$aData['totalInvestasi'] = $this->ModelCustomer->getTotalRataanInvestasi();
			$aData['jumlahCustomer'] = $this->ModelCustomer->getJumlahCustomer();
			$this->load->model('ModelLokasi');
			$aData['lokasi'] = $this->ModelLokasi->getAllLokasi();
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('home-admin', $aData);
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
	function loadDataCustomer(){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Data Customer";
			$this->load->model('ModelCustomer');
			$aData['dataCustomer'] = $this->ModelCustomer->getDataCustomer();
			$aData['dataCustomer'] = json_decode(json_encode($aData['dataCustomer']),true);
			//var_dump($aData['dataCustomer']);
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('data-customer', $aData);
		}
		else{
			redirect('/login');
		}
	}
	function loadDataAdministrator(){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Data Administrator";
			$this->load->model('ModelAdmin');
			$aData['dataAdministrator'] = $this->ModelAdmin->getDataAdministrator();
			//var_dump($aData['dataCustomer']);
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('data-administrator', $aData);
		}
		else{
			redirect('/login');
		}
	}
	function loadViewEditCustomer($idCustomer){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Edit Data Customer";
			$this->load->model('ModelLokasi');
			$res = $this->ModelLokasi->getLokasiKota();
			$aData['lokasi'] = json_decode(json_encode($res),true);
			$this->load->model('ModelCustomer');
			$aData['detailCustomer'] = $this->ModelCustomer->getDetailCustomer($idCustomer);
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('edit-customer', $aData);
		}
		else{
			redirect('/login');
		}
	}
	function editCustomer(){
		if($this->session->userdata('logged_in')){
			$idCustomer = $this->input->post('idCustomer');
			$nama = $this->input->post('namaCustomer');
			$idLokasi = $this->input->post('lokasi');
			$tanggalLahir = $this->input->post('tanggal_lahir');
			$alamat = $this->input->post('alamat');
			$nilaiInvestasi = $this->input->post('nilai_invest');
			$idAdmin = $this->session->userdata('idAdmin');
			$this->load->model('ModelCustomer');
			$this->ModelCustomer->editCustomer($idCustomer, $nama, $idLokasi, $tanggalLahir, $alamat, $nilaiInvestasi, $idAdmin);
			$this->session->set_flashdata('info_add', "Berhasil menambahkan melakukan Edit Customer $nama ");
			redirect('/dataCustomer');
		}
		else{
			redirect('/login');
		}
	}
	function revertCustomer($idCustomer){
		if($this->session->userdata('logged_in')){
			$this->load->model('ModelCustomer');
			redirect('/dataCustomer');
		}
		else{
			redirect('/login');
		}
	}
	function dataHubunganCustomer(){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Data Hubungan Customer";
			$this->load->model('ModelHubungan');
			$aData['hubunganCustomer'] = $this->ModelHubungan->getHubunganCustomer();
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('hubungan-customer', $aData);
		}
		else{
			redirect('/login');
		}
	}
	function detailHubunganCustomer($idStatus){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Detail Hubungan Customer";
			$this->load->model('ModelHubungan');
			$aData['detailHubunganCustomer'] = $this->ModelHubungan->getDetailHubunganCustomer($idStatus);
			$aData['listHubungan'] = $this->ModelHubungan->getJenisHubungan();
			$aData['listHubungan'] = json_decode(json_encode($aData['listHubungan']),true);
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('edit-hubungan', $aData);
		}
		else{
			redirect('/login');
		}
	}
	function editHubunganCustomer(){
		if($this->session->userdata('logged_in')){
			$idCustomer1 = $this->input->post('idCustomer1');
			$idCustomer2 = $this->input->post('idCustomer2');
			$idHubunganLama = $this->input->post('idHubunganLama');
			$idHubunganBaru = $this->input->post('hubungan');
			$tanggal = date("Y-m-d");
			$this->load->model('ModelHubungan');
			$this->ModelHubungan->editHubunganCustomer($idHubunganLama, $idHubunganBaru, $idCustomer1, $idCustomer2, $tanggal);
			$this->session->set_flashdata('info_add', "Berhasil menambahkan Edit Hubungan Customer");
			redirect('/dataHubunganCustomer');
		}
		else{
			redirect('/login');
		}
	}
	function revertHubunganCustomer(){
		if($this->session->userdata('logged_in')){
			$idCustomer1 = $this->input->post('revCust1');
			$idCustomer2 = $this->input->post('revCust2');
			$idHubungan = $this->input->post('revIdHub');
			//die($idCustomer1);
			$this->load->model('ModelHubungan');
			$this->ModelHubungan->revertHubunganCustomer($idCustomer1, $idCustomer2, $idHubungan);
			redirect('/dataHubunganCustomer');
		}
		else{
			redirect('/login');
		}
	}
	function loadAdvancedSearch(){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Advanced Search";
			$this->load->model('ModelLokasi');
			$res = $this->ModelLokasi->getLokasiKota();
			$aData['lokasi'] = json_decode(json_encode($res),true);
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('form-advanced-search', $aData);
		}
		else{
			redirect('/login');
		}
	}
	function resultAdvancedSearch(){
		if($this->session->userdata('logged_in')){
			$aData['title'] = "CRM - Hasil Pencarian";
			$namaCustomer = $this->input->post('namaCustomer');
			if($namaCustomer == ""){
				$namaCustomer = NULL;
			}
			$idLokasi = $this->input->post('lokasi');
			if($idLokasi == ""){
				$idLokasi = NULL;
			}
			$umurAwal = $this->input->post('umur_awal');
			if($umurAwal == ""){
				$umurAwal = NULL;
			}
			$umurAkhir = $this->input->post('umur_akhir');
			if($umurAkhir == ""){
				$umurAkhir = NULL;
			}
			$investasiAwal = $this->input->post('investasi_awal');
			if($investasiAwal == ""){
				$investasiAwal = NULL;
			}
			$investasiAkhir = $this->input->post('investasi_akhir');
			if($investasiAkhir == ""){
				$investasiAkhir = NULL;
			}
			
			$this->load->model('ModelCustomer');
			$aData['dataCustomer'] = $this->ModelCustomer->searchCustomer($namaCustomer, $idLokasi, $umurAwal, $umurAkhir, $investasiAwal, $investasiAkhir);
			$this->load->view('template/header', $aData);
			$this->load->view('template/left-side');
			$this->load->view('template/right-panel');
			$this->load->view('result-search', $aData);
		}
		else{
			redirect('/login');
		}
	}
	function getKarakteristikDaerah(){
		$idLokasi = $this->input->post('idLokasi');
		$this->load->model('ModelLokasi');
		$aData['hasilKarakteristik'] = $this->ModelLokasi->getKarakteristikDaerah($idLokasi);
		//var_dump($aData['hasilKarakteristik']);
		$string = $this->load->view('data-karakteristik', $aData, true);
		echo $string;
	}
}
?>