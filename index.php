<?php
require('helpers.php');

if(empty($_REQUEST['url'])) {
    $_REQUEST['url'] = 'login';
}

controller($_REQUEST['url']);

?>