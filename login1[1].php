<?php
$conn = mysqli_connect('Localhost', 'root','','wit');
if(!$conn){
    die("Oops!");
}

$username=$_POST['username'];
$password=$_POST['password'];
$sql = "SELECT * FROM enrollmenttb WHERE username = '$username' AND password = '$password'";
$result =mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0){
    echo "Sucess";
    
    exit();
}else{
    echo "login Failed";

}
mysqli_close($conn);
?>



