<?php
include 'config.php';
session_start();

/*if(isset($_POST['submit'])){

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = mysqli_real_escape_string($conn, md5($_POST['password']));
   $cpass = mysqli_real_escape_string($conn, md5($_POST['cpassword']));
   $user_type = $_POST['user_type'];

   $select_users = mysqli_query($conn, "SELECT * FROM `users` WHERE email = '$email' AND password = '$pass'") or die('query failed');
   if(mysqli_num_rows($select_users) > 0){
      $message[] = 'user already exist!';
   }else{
      if($pass != $cpass){
         $message[] = 'confirm password not matched!';
      }else{
         mysqli_query($conn, "INSERT INTO `users`(name, email, password, user_type) VALUES('$name', '$email', '$cpass', '$user_type')") or die('query failed');
         $message[] = 'registered successfully!';
         header('location:login.php');
      }
   }

}*/


$response = array('success' => false);

if(isset($_POST['name']) && $_POST['name']!='' && isset($_POST['email']) && $_POST['email']!='' && isset($_POST['password']) && $_POST['password']!='' && isset($_POST['cpassword']) && $_POST['cpassword']!='' && isset($_POST['user_type']) && $_POST['user_type']!='')
{
	$sql = "INSERT INTO users(name, email,password, user_type) VALUES('".addslashes($_POST['name'])."', '".addslashes($_POST['email'])."', '".addslashes (md5($_POST['password']))."' , '".addslashes($_POST['user_type'])."')";
	
	if($conn->query($sql))
	{
		$response['success'] = true;
	}
}

echo json_encode($response);
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>register</title>

   <!-- FONT -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <!-- CSS  -->
   <link rel="stylesheet" href="css/style_login.css">
   <!-- CDN AJAX -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

</head>
<body>



<?php
/*if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}*/
?>
   
<!--<div class="form-container">

   <form action="" method="post">
      <h3>register now</h3>
      <input type="text" name="name" placeholder="enter your name" required class="box">
      <input type="email" name="email" placeholder="enter your email" required class="box">
      <input type="password" name="password" placeholder="enter your password" required class="box">
      <input type="password" name="cpassword" placeholder="confirm your password" required class="box">
      <select name="user_type" class="box">
         <option value="user">user</option>
         <option value="admin">admin</option>
      </select>
      <input type="submit" name="submit" value="register now" class="btn">
      <p>already have an account? <a href="login.php">login now</a></p>
   </form>

</div>-->
<div class="container">
    <input type="checkbox" id="flip">
    <div class="cover">
      <div class="front">
        <img src="images/1678099.jpg" alt="">
        <div class="text">
        <span class="text-1">Rubrik Grafis</span>
          <span class="text-2">Kelas design grafis nomer 1 di Indonesia</span>
        </div>
      </div>
   </div>
   
    <div class="forms">
        <div class="form-content">
            <div class="signup-form" id="pesan">
                  <div class="title">Signup</div>
                  <form action="" method="post" id="myForm">
                     <div class="input-boxes">
                     <div class="input-box">
                        <i class="fas fa-user"></i>
                        <input type="text" name="name" placeholder="enter your name" required class="box">
                        <!--<input type="text" placeholder="Enter your name" required>-->
                     </div>
                     <div class="input-box">
                        <i class="fas fa-envelope"></i>
                        <input type="email" name="email" placeholder="enter your email" required class="box">
                        <!--<input type="text" placeholder="Enter your email" required>-->
                     </div>
                     <div class="input-box">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="password" placeholder="enter your password" required class="box">
                        <!--<input type="password" placeholder="Enter your password" required>-->
                     </div>
                     <div class="input-box">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="cpassword" placeholder="confirm your password" required class="box">
                        <!--<input type="password" placeholder="Enter your password" required>-->
                     </div>
                     <div class="input-box">
                        <select name="user_type" class="box">
                              <option value="user">user</option>
                              <option value="admin">admin</option>
                        </select>
                     </div>
                     <div class="button input-box">
                           <input type="submit" name="submit" onclick="submitForm();" value="register now" class="btn">
                     </div>
                     <div class="text sign-up-text">Already have an account? <a href="login.php">login now</a></div>
                     </div>
                  </form>    
            </div>
         </div>
    </div>
</div>
      
</body>
<script type="text/javascript">
		function submitForm()
		{
			var name = $('input[name=name]').val();
			var email = $('input[name=email]').val();
			var password = $('input[name=password]').val();
			var cpassword = $('input[name=cpassword]').val();
         var user_type = $('input[name=user_type]').val();
			if(name != '' && email!= '' && password != '' && cpassword != '' && user_type != '')
			{
				var formData = {name: name, email: email, password: password, cpassword: cpassword, user_type: user_type};
				//$('#pesan').html('<span style="color: red">Loading</span>');
				$.ajax({url: "http://localhost/project/config.php", type: 'POST', data: formData, success: function(response)
				{
					var res = JSON.parse(response);
					console.log(res);
					if(res.success == true)
						$('#pesan').html('<span style="color: green">Form submitted successfully</span>');
					else
						$('#pesan').html('<span style="color: red">Form not submitted. Some error in running the database query.</span>');
				}
				});
			}
			else
			{
				$('#pesan').html('<span style="color: red">Isi semua ye</span>');
			}
		} 
	</script>
</html>