<?php


echo file_get_contents(explode(".",$_GET['q'])[0]."/".explode(".", $_GET['g'])[1]);


?>
