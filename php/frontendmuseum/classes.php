<?php


spl_autoload_register(function ($class) {
  include_once 'classes/' . $class . '.php';
});
