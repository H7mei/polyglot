<?php

$list = array(1, 2, 3, 4, 5);

echo $list[0] . "\n";

// associative array

$person = array(
  "name" => "hanafichoi",
  "age" => 60,
);
$some = array("id" => 1, "name" => "hanafichoi", 60);

echo $person["name"] . "\n";
echo 'age ' . $some[0] . "\n";

// loops

while ($some[0] > 0) {
  echo $person["name"] . " is " . $some[0] . " years old\n";
  $some[0]--;
}

foreach ($list as $item) {
  echo $item . "\n";
}

do {
  echo "do while\n";
} while (false);

for ($i = 0; $i < 5; $i++):
  echo $i . "\n";
?>
  <h1>
    <?php echo "$i some things \n" ?>
  </h1>
<?php
endfor;

// methods

$arr_country = array("Korea", "Japan", "China");

echo count($arr_country) . "\n";

array_push($arr_country, "USA");

echo count($arr_country) . "\n";

array_pop($arr_country);

echo count($arr_country) . "\n";

array_unshift($arr_country, "Vietnam");

echo count($arr_country) . "\n";

array_shift($arr_country);

echo count($arr_country) . "\n";

echo 'in_array ' . in_array("Korea", $arr_country) . "\n";

echo 'array_search ' . array_search("Korea", $arr_country) . "\n";

print_r($arr_country);
