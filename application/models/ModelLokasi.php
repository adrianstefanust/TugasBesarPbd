<?php
class ModelLokasi extends CI_Model{
	function getLokasiKota(){
		$data = $this->db->query("call getlistKota()");
		$result = $data->result();
		mysqli_next_result( $this->db->conn_id );
		return $result;
	}
}
?>