<?php

/* 

2 ways to connect to a database in PHP:
1. costum profiders [mysqli, mysql, pgsql, etc]
2. PDO (PHP Data Objects)


*/
class DB
{
  function executeOne($query)
  {
    $db = new SQLite3('./data/data.db');
    $result = $db->query($query);

    if ($result) {
      $all = $result->fetchArray(SQLITE3_ASSOC);
      return $all;
    } else {
      return 1;
    }
  }

  function executeAll($query)
  {
    $db = new SQLite3('./data/data.db');
    $result = $db->query($query);

    $all = [];
    while ($row = $result->fetchArray(SQLITE3_ASSOC)) {
      $all[] = $row;
    }

    return $all;
  }
}
