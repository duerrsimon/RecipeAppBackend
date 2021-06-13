<?php

// return recipes with a certain category

header('Access-Control-Allow-Origin: *');

$lang = wire('languages')->get($input->urlSegment1);
if(!$lang instanceof Nullpage){
	$user->language = $lang;
} else {
	$lang = $user->language;
}


$query = [
    'title',
    'time',
	'image'=>['httpUrl'],
    'categoryIds'=>function($page){
        $ids = array();
        foreach ($page->category as $cat) {
            array_push($ids, $cat->id);
        }
		return $ids;
	},
    'ingredientIds'=>function($page){
        $ids = array();
        foreach ($page->ingredientWrapper as $ing) {
            foreach ($ing->ingredientList as $i) {
			    $ids[$i->ingredient->id]=$i->ingredient->title;
            }
            
        }
		return $ids;
	},
];
$selector = 'template=recipe,include=all, category='.$page->id;
echo $pages->find($selector)->pageQueryJson($query); 
