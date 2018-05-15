<?php
class ModelAdmin extends CI_Model{
	function checkLogin($username, $password){
		$data = $this->db->query("call login('$username', '$password')");
		$result = $data->result_array();
		mysqli_next_result( $this->db->conn_id );
		return $result;
	}
	function getLoginItem($username, $item){
		$this->db->select('id');
		$this->db->where('username', $username);
		$result = $this->db->get('admin');
		if($result->num_rows() == 1){
			return $result->row(0)->$item;
		} else {
			return false;
		}
	}
	function insertAdministrator($username, $password, $nama){
		$this->db->query("call insertAdmin('$username', '$password', '$nama')");
	}
	function getDataAdministrator(){
		$data = $this->db->query("call getDataAdministrator()");
		$result = $data->result_array();
		mysqli_next_result( $this->db->conn_id );
		return $result;
	}
	function getDetailAdmin($idAdmin){
		$data = $this->db->query("call getDetailAdmin('$idAdmin')");
		$result = $data->result_array();
		mysqli_next_result( $this->db->conn_id );
		return $result;
	}
	function updateAdmin($idAdmin, $username, $password, $nama){
		$data = $this->db->query("call editDataAdmin('$idAdmin','$username','$password','$nama')");
		mysqli_next_result( $this->db->conn_id );
	}
}
//CARA PENGGUNAAN STORED PROCEDURE DALAM CODEIGNITER
//$this->db->query("call insertAdmin('$username', '$password', '$nama')");
?>