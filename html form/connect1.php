<?php
//$rollno = $_POST['rollno'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$password = $_POST['password'];

$conn = new mysql('localhost','root','','form');
if($conn->connect_error){
  die('Connection failed : '.$conn->connect_error);
}
else{
  $stmt = $conn->prepare("insert into student(firstname,lastname,email,password)
                              values(?,?,?,?)");
  $stmt->bind_param("sssi",$firstname,$lastname,$email,$password);
  $stmt->execute();
  echo "Registration Successful!";
  $stmt->close();
  $conn->close();
}


 ?>
