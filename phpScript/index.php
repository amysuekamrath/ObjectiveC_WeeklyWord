<?php

class DB {
	
	//Connects to the weeklyword database.
	function __construct(){
		$this->db = new mysqli('localhost','root','root','weeklyword');
		$this->db->autocommit(FALSE);
	}

	//Disconnects from the database.
	function __destruct(){
		$this->db->close();
	}

	//inserts the data into the database
	function insert(){

		//Checks to make sure the data is the data is set before trying to insert it.
		if (isset($_POST["guid"]) && isset($_POST["startdt"]) && isset($_POST["enddt"]) && isset($_POST["relationship"]) && isset($_POST["personally"])){

			//inserting the data into the ww_status table
			$stmt = $this->db->prepare('insert into ww_status (guid,ww_start_dt,ww_end_dt, last_pl_sent_dt, need_to_meet_contacts, key_obj_1, key_obj_2, key_obj_3, key_obj_4) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)');
			$stmt->bind_param("sssssssss", $_POST["guid"], $_POST["startdt"], $_POST["enddt"], $_POST["lastpldt"], $_POST["contacts"], $_POST["object1"], $_POST["object2"], $_POST["object3"], $_POST["object4"]);
			$stmt->execute();
			
			//Getting the ww_id from the insert to use it in the insert of other tables
			$wwId = $stmt->insert_id;

			//inserting data into the ww_hours table
			$stmt = $this->db->prepare('insert into ww_hours (ww_id,planning_hours,language_class_hours,studying_hours,group_related_hours, group_resp_hours, other_req_act_hours, qt_hours) VALUES (?,?,?,?,?,?,?,?) ');
			$stmt->bind_param("iiiiiiii",$wwId,$_POST["planning"],$_POST["class"],$_POST["studying"],$_POST["groupRelated"],$_POST["groupResponse"],$_POST["otherRequired"],$_POST["cool"]);
			$stmt->execute();

			//inserting data into the ww_relationship table
			$stmt = $this->db->prepare('insert into ww_relationship (ww_id,lord_relationship, doing_personally, desc_min, praying) VALUES (?,?,?,?,?) ');
			$stmt->bind_param("issss", $wwId,$_POST["relationship"],$_POST["personally"],$_POST["min"],$_POST["praying"]);
			$stmt->execute();

			//Closing the connect to the database
			$stmt->close();
		}
	}
}


$api = new DB;
$api->insert();

?>

