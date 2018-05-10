<?php
class ModelLokasi extends CI_Model{
	function getLokasiKota(){
		$data = $this->db->query("call getlistKota()");
		$result = $data->result();
		return $result;
	}
}
?>