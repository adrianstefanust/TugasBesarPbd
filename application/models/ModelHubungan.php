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
}
?>