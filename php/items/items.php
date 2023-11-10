<?php 



include "../connect.php";

$categoryid = filterRequest("id")


getAllData("itemsview", "categories_id = $categoryid" );


// $alldata = array();

// $alldata['status'] = "success";


// $categories =  getAllData("categories" , null , null ,false);


// $alldata['categories'] = $categories;



// $items = getAllData("itemsview", "items_discount !=0", null, false);


// $alldata['items'] = $items;


// echo json_encode($alldata);



?>