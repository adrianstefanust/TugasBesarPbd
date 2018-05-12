<?php
class ModelCustomer extends CI_Model{
	function insertCustomer($nama, $lokasi, $tanggalLahir, $alamat, $nilaiInvestasi, $idAdmin){
		$this->db->query("call insertCustomer('$nama', '$lokasi', '$tanggalLahir', '$alamat', '$nilaiInvestasi', '$idAdmin')");
	}
	function getAllCustomerData(){
		$this->db->select('idCustomer, nama');
		$query = $this->db->get('customer');
		return $query->result();
	}
	function insertHubunganCustomer($idHub, $customer1, $customer2){
		$this->db->query("call insertHubunganCustomer('$customer1', '$customer2', '$idHub')");
	}
	function getDataCustomer(){
		$data = $this->db->query("call getDataCustomer()");
		$result = $data->result();
		return $result;
	}
	function getTotalRataanInvestasi(){
		$data = $this->db->query("call getRataanTotalnvestasi()");
		$result = $data->result_array();
		mysqli_next_result( $this->db->conn_id );
		return $result;
	}
	function getJumlahCustomer(){
		$data = $this->db->query("call getJumlahCustomer()");
		$result = $data->result_array();
		mysqli_next_result( $this->db->conn_id );
		return $result;
	}
	function getDetailCustomer($idCustomer){
		$data = $this->db->query("call getDetailCustomer('$idCustomer')");
		$result = $data->result_array();
		return $result;
	}
	function editCustomer($idCustomer, $nama, $idLokasi, $tanggalLahir, $alamat, $nilaiInvestasi, $idAdmin){
		$data = $this->db->query("call updateCustomer('$idCustomer', '$nama', '$idLokasi', '$tanggalLahir', '$alamat', '$nilaiInvestasi', '$idAdmin')");
	}
	function revertCustomer($idCustomer, $idAdmin){
		$data = $this->db->query("call revertCustomer('$idCustomer', '$idAdmin')");
	}
	function searchCustomer($namaCustomer, $idLokasi, $umurBawah, $umurAtas, $investasiBawah, $investasiAtas){
		$data = $this->db->query("call advancedSearch('$namaCustomer', '$idLokasi', '$umurBawah', '$umurAtas', '$investasiBawah', '$investasiAtas')");
		$result = $data->result_array();
		return $result;
	}
}
?>