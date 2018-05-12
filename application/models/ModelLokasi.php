<?php
class ModelLokasi extends CI_Model{
	function getLokasiKota(){
		$data = $this->db->query("call getlistKota()");
		$result = $data->result();
		mysqli_next_result( $this->db->conn_id );
		return $result;
	}
	function getAllLokasi(){
		$this->db->select('idLokasi, nama');
		$query = $this->db->get('lokasi');
		return $query->result_array();
	}
	function getKarakteristikDaerah($idLokasi){
		$data = $this->db->query("call karakteristikDaerah('$idLokasi')");
		$result = $data->result_array();
		mysqli_next_result( $this->db->conn_id );
		return $result;
	}
}
?>