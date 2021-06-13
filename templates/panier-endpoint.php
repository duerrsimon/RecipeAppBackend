<?php

// return contents of this weeks panier

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, X-Requested-With");

$lang = wire('languages')->get($input->urlSegment1);
if(!$lang instanceof Nullpage){
	$user->language = $lang;
} else {
	$lang = $user->language;
}


$query = [
    'title',
    'modified',
    'ingredientList'=>['ingredient'=>['id','title'],  'quantity', 'unit'=>['abbreviation']
],
];
// find the most recently created panier
echo $pages->findOne('template=panier, sort=-created')->pageQueryJson($query);
