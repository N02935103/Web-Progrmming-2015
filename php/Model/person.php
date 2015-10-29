<?php
include '../inc/global.php';

    class Person{
        public static function Get(){
            return FetchAll("SELECT * FROM Users");
        }
    }
?>