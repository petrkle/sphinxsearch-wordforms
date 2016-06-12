#!/usr/bin/php -d memory_limit=2G
<?php

$vstup = file($argv[1]);

$vystup = array();
foreach($vstup as $line){
        $line = preg_split('/ > /',trim($line));
        $vystup[$line[0]] = $line[1];
}

foreach($vystup as $foo=>$bar){
        if($foo != $bar){
                print "$foo > $bar\n";
        }
}
