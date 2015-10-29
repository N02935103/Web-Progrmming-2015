<?php
    function GetConnection(){
        $sql_password = '123456';
        return new mysqli('localhost', 'astonsanders', $sql_password, 'c9');
    }
    
    function my_print($x){
	echo '<pre>';
	print_r($x);
	echo '</pre>';
    }
    
    function FetchAll($sql){
        $ret = array();
        $conn = GetConnection();
        $results = $conn->query($sql);
        
        $error = $conn->error;
        if($error){
            echo $error;
        }
        else{
            while($rs = $results->fetch_assoc()){
                $ret[]=$rs;
            }
        }
        $conn->close();
        
        return $ret;
    }
?>