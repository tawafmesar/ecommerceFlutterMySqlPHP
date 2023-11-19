<?php 

include "../connect.php" ; 

$id = filterRequest("id") ; 

getAllData("favorite", "favorite_usersid = ? ", array($id));

