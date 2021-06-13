<?php

// returns recipes, optionally with only the recipes containing select ingredients
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
if ($input->post->id && $input->post->id!="") {
    $selector = 'template=recipe,include=all, ingredientWrapper.ingredientList.ingredient='.str_replace(',','|',$sanitizer->text($input->post->id));
}else{
    $selector = 'template=recipe,include=all';
}
//echo json_encode(array("id"=>str_replace(',','|',$sanitizer->text($input->post->id))));
echo $pages->find($selector)->pageQueryJson($query); 
