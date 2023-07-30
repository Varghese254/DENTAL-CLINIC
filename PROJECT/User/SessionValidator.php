<?php
session_start();
if(!(isset($_SESSION['lgid']) && !empty($_SESSION['lgid']))) {
	header("Location:../Guest/Login.php");
    }
?>