<?php
    include 'conection.php';
    $con1=new Connection();
    $con=$con1->mkConnection();
    
    class model
    {
        function insert($con,$stu,$table)
        {
            $k=array_keys($stu);
            $col=implode(",",$k);
            
            $v=array_values($stu);
            $val=implode("','",$v);
            
            $q="insert into $table($col) values('$val')";
           
            return $con->query($q);
        }
        function select_where($con,$table,$where)
        {
            $q="select * from $table where 1=1";
            foreach($where as $k=>$v)
            {
                $q.=" and $k='$v'";
            }
            echo $q;exit;
            $all1=$con->query($q);
            
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
        function select($con,$table)
        {
            $q="select * from $table";
            $all1=$con->query($q);
            
            while($row=$all1->fetch_object())
            {
                $r[]=$row;
            }
            if(isset($r))
                return $r;
        }
        function cnt($con,$table)
        {
            $q="select * from $table";
            $cnt=$con->query($q);
            $no=$cnt->num_rows;
            
            return $no;
        }
    }
?>