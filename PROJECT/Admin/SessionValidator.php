<?php
session_start();
if(!(isset($_SESSION['Aid']) && !empty($_SESSION['Aid']))) {
	header("Location:../Guest/Login.php");
    }
?>