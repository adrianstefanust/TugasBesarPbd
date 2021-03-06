<?php
class ModelHubungan extends CI_Model{
	function insertHubungan($namaHub){
		$this->db->query("call insertHubungan('$namaHub')");
	}
	function getJenisHubungan(){
		$this->db->select('idHubungan, nama');
		$query = $this->db->get('hubungan');
		return $query->result();
	}
	function getHubunganCustomer(){
		$data = $this->db->query("call getHubunganCustomer()");
		$result = $data->result_array();
		return $result;
	}
	function getDetailHubunganCustomer($idStatus){
		$data = $this->db->query("call getDetailHubungan('$idStatus')");
		$result = $data->result_array();
		mysqli_next_result( $this->db->conn_id );
		return $result;
	}
	function editHubunganCustomer($idHubunganLama, $idHubunganBaru, $idCustomer1, $idCustomer2){
		$data = $this->db->query("call updateHubungan('$idHubunganLama','$idHubunganBaru','$idCustomer1','$idCustomer2')");
	}
	function revertHubunganCustomer($idCustomer1, $idCustomer2, $idHub){
		$data = $this->db->query("call revertHubungan('$idCustomer1','$idCustomer2', '$idHub')");
	}
	function getLogPerubahanHubungan(){
		$data = $this->db->query("call getLogPerubahanHubungan()");
		$result = $data->result_array();
		mysqli_next_result( $this->db->conn_id );
		return $result;
	}
}
?>