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
		$this->db->query("call insertHubunganCustomer('$idHub', '$customer1', '$customer2')");
	}
}
?>