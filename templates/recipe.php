<?php
// return detailed information about one recipe

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
	'creator',
	'hint',
	'image'=>['httpUrl', 'license', 'creator', 'creator_url'],
	'defaultPersons',
    'category'=>['title', 'id'],
	'related'=>['title', 'id', 'image'=>['httpUrl'], 'time',  'categoryIds'=>function($page){
        $ids = array();
        foreach ($page->category as $cat) {
            array_push($ids, $cat->id);
        }
		return $ids;
	}, ],
	'ingredientIds'=>function($page){
        $ids = array();
        foreach ($page->ingredientWrapper as $ing) {
            foreach ($ing->ingredientList as $i) {
			$ids[$i->ingredient->id]=$i->ingredient->title;
            }
            
        }
		return $ids;
	},
	'steps'=>[
		'title',
		'desc',
		'time'],
	"ingredientWrapper#ingredients"=>['title','ingredientList'=>['ingredient'=>['id','title'], 'hint',  'quantity', 'unit'=>['abbreviation']]],
];

echo $page->pageQueryJson($query);
