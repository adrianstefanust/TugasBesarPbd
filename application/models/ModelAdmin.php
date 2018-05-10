<?php
class ModelAdmin extends CI_Model{
	function checkLogin($username, $password){
		$this->db->select('id');
		$this->db->where('username', $username);
		$result = $this->db->get('admin');
		if($result->num_rows() >=1){
			
			$this->db->where('pass', $password);
			$result = $this->db->get('admin');
			if($result->num_rows() >=1){
				return 'true';
			}
			else{
				return "Incorrect Password";
			}
		} else {
			return "Username not exists";
		}
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
}
//CARA PENGGUNAAN STORED PROCEDURE DALAM CODEIGNITER
//$this->db->query("call insertAdmin('$username', '$password', '$nama')");
?>