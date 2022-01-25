<?php

/* 
 * @CODOLICENSE
 */

defined('IN_CODOF') or die();

$CF_installed=true;

function get_codo_db_conf() {


    $config = array (
  'driver' => 'mysql',
  'host' => 'localhost',
  'database' => 'u628291831_connecto3d',
  'username' => 'u628291831_connecto3d',
  'password' => 'connecto3d',
  'prefix' => '',
  'charset' => 'utf8',
  'collation' => 'utf8_unicode_ci',
);

    return $config;
}

$DB = get_codo_db_conf();

$CONF = array (
    
  'driver' => 'Custom',
  'UID'    => '5eb4fc86187f3',
  'SECRET' => '5eb4fc8618832',
  'PREFIX' => ''
);
