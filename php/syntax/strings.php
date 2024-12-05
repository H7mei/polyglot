<?php

$title = "PHP Syntax";

$message = "We Run We Learn" . " " . $title;

echo $message . "\n";


$json = '{"title": "PHP Syntax", "message": "We Run We Learn"}';

$data = json_decode($json);

echo $data->title . "\n";
echo $data->message . "\n";

// heredoc

$json2 = <<<JSON
{
    "title": "PHP Syntax",
    "message": "We Run We Learn"
}
JSON;

$data2 = json_decode($json2);

echo $data2->title . "\n";
echo $data2->message . "\n";

$othscore = 100;

$json3 = <<<PRETTYJSON
{
    "title": $othscore,
    "message": "We Run We Learn"
}
PRETTYJSON;

$data3 = json_decode($json3);

echo $data3->title . "\n";
echo $data3->message . "\n";

// nowdoc

$json4 = <<<'JSON'
{
    "title": "PHP Syntax",
    "message": "We Run We Learn"
}
JSON;

$data4 = json_decode($json4);

echo $data4->title . "\n";
echo $data4->message . "\n";


$prettyJson = <<<'PRETTYJSON'
{
    "title": "PHP Syntax",
    "message": "We Run We Learn"
}
PRETTYJSON;

$data5 = json_decode($prettyJson);

echo $data5->title . "\n";
echo $data5->message . "\n";


// etc 

$variable = "Hello world";

echo "Hello $variable" . "\n";

echo "Hello {$variable}" . "\n";

echo "Hello ${variable}" . "\n";

echo "Hello $variable world" . "\n";

// method 

echo strlen($variable) . "\n";

echo strtoupper($variable) . "\n";

echo strtolower($variable) . "\n";

echo str_replace("world", "PHP", $variable) . "\n";
