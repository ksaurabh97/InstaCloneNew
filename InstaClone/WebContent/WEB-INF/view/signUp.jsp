<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>InstaClone | Sign up</title>

<style type="text/css">

#inp12{
	border-radius: 4px;
	height: 35px;
	width:300px;
	background-color:#F8F8F8;
}

#user_name{
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
	
	font-size: 13px;
	text-align:center;
}

.signup{
	margin-left:475px;
	margin-right:475px;
	margin-bottom:50px;
	text-align:center;
	border: 1px solid #E8E8E8;
	background-color: white;
}

.pajhi{
	margin-left:475px;
	margin-right:475px;
	margin-bottom:50px;
	text-align:center;
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
		<div class="inside">InstaClone</div>
		
		<div>
			<form action="" method="POST">
	    	<table align="center" cellspacing="20">
				<tr>
					
					<td><input type="text" name="phone"  maxlength="30" required="required" id="inp12" placeholder=" Phone Number or Email" /></td>
				</tr>
				<tr>
					
					<td><input type="text" name="name"  maxlength="30" required="required" id="inp12" placeholder=" Full Name"/></td>
				</tr>
				<tr>
					
					<td><input type="text" id="user_name" name="username"  maxlength="30" required="required" placeholder=" Username"/></td>
				</tr>
				<tr>
					
					<td><input type="password" name="password"  maxlength="30" required="required" id="inp12" placeholder=" Password"/></td>
				</tr>

			</table>
			
			<input type="submit" value="Sign up" id="submit"/><br><br>
		</div>
		
		
		
	</div>
	
	<div class="signup">
			<div id="insideSignup">
				<p id="par">Have an account? <a href="login.web" style="text-decoration: none;"> Log in</a></p>
			</div>
			
			
	</div>
	
	<div class="pajhi">
		<p class="ajhi"></p>
	</div>
	
		<script src="${pageContext.request.contextPath}/jquery-3.5.1.js"></script>
		<script>
		
		jQuery(document).ready(function() {
			
			$("#user_name").focus(function(){
				$("p.ajhi").empty();
			});
			
			$("#user_name").blur(function(){
				$("p.ajhi").empty();
				var data1= $("#user_name").val();
				$.ajax({
					method:"GET",
					dataType:"html",
					url:"ajaxSearch.web",
					data : "user="+data1,
					success: function(response){
						$("p.ajhi").html(response);
					},
					error: function(request, errorType, errorMsg){
						alert("ERROR",+errorMsg);
					}
				});
			})
		});
		</script>
	
</body>
</html>