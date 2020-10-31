<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>InstaClone | Log in</title>
<style type="text/css">

#inp12{
	border-radius: 4px;
	height: 35px;
	width:300px;
	background-color:#F8F8F8;
}

.shuttr{
	border: 1px solid #E8E8E8;
	margin-top: 100px;
	margin-left:475px;
	margin-right:475px;
	margin-bottom:10px;
	font-family: serif;
	text-align:center;
	font-size: 25px;
	background-color: white;
}

.forgotpswd{
	
	font-size: 15px;
	text-align:center;
	margin-bottom:5px;
}

.signup{
	margin-left:475px;
	margin-right:475px;
	margin-bottom:50px;
	text-align:center;
	border: 1px solid #E8E8E8;
	background-color: white;
}



#submit{
	border-radius: 5px;
	height: 35px;
	width:300px;
	background-color: #3c8bea;
	color: white;
}

.inside{
	margin-top: 20px;
	font-family: serif;
}

.par{

	text-align: center;
	font-size: 10px;
	
}

a{
	color: #3498db;
}
body{
background-color: #F8F8F8;
}

</style>
<body>

	<div class="shuttr">
		<div class="inside">Shuttr</div>
		
		<div>
			<form action="" method="POST">
	    	<table align="center" cellspacing="20">
				<tr>
					
					<td><input type="text" name="username"  maxlength="30" required="required" id="inp12" placeholder=" Phone number, username, or email" /></td>
				</tr>
				<tr>
					
					<td><input type="password" name="password"  maxlength="30" required="required" id="inp12" placeholder=" Password"/></td>
				</tr>

			</table>
			
			<input type="submit" value="Login" id="submit"/><br><br>
			<div class="forgotpswd"><a href="" style="text-decoration: none;">Forgot password?</a></div>
		</div>
		
		
		
	</div>
	
	<div class="signup">
			<div id="insideSignup">
				<p id="par">Don't have an account? <a href="signUp.web" style="text-decoration: none;">Sign up</a></p>
			</div>
	</div>
	
	
	
	
</body>
</html>