<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>login page</title>
    <%
            String path=request.getContextPath();
            String basePath=request.getScheme()+"://" +request.getServerName()+":"+request.getServerPort()+path+"/";
            %>
<style>
body{
background:url('dianibeach2449148891ec6eac0478dd9d621813ed (1).jpg');
background-repeat:no-repeat;
background-size:cover;
border: 3px solid black;
font-weight:bold;
font-size:20px;
font-family:arial;
}
#login{
background-color:limegreen;
height:500px;
width:50%;
border:6px solid black;
border-radius:550px;
}
.input{
border-top:3px solid limegreen;
border-bottom:2px solid black;
border-left:3px solid limegreen;
border-right:3px solid limegreen;
background-color:limegreen;
width:350px;
font-weight:bolder;
font-size:15px;
}
.btn-submit{
background-color:green;
height:30px;
width:70px;
border-radius:30px;
}
.btn-cancel{
background-color:red;
height:30px;
width:70px;
border-radius:30px;
}
hr{
width:600px;
height:10px;
background-color:green;
border:3px solid black;
}
#circle1{
width:600px;
height:100px;
background-color:limegreen;
border:3px solid black;
font-weight:bolder;
border-radius:30px;
}
#circle2{
width:100px;
height:600px;
background-color:limegreen;
border:3px solid black;
font-weight:bolder;
float:right;
border-radius:30px;
}
#circle3{
width:100px;
height:600px;
background-color:limegreen;
border:3px solid black;
font-weight:bolder;
float:left;
border-radius:30px;
}
</style>
</head>
<body>
<center><img src="<c:url value="/resources/logo.JPG"/>" height='150'/></center>
        <br><br><br>
<center><div id="circle2">
O<br>
U<br>
R<br><br><br>

W<br><br>
E<br><br>
B<br><br>
S<br><br>
I<br><br>
T<br><br>
E<br><br>
</div>
<div id="circle3">
W<br><br>
E<br><br>
L<br><br>
C<br><br>
O<br><br>
M<br><br>
E<br><br>
<br><br>T
<br>O

</div>
<div id="login"><center><br> Login Page<br><marquee direction="right"><hr/></marquee>
<br><marquee direction="left"><hr/></marquee>
</center>
    <center><form action="<c:url value="/resources/loginCeck.jsp"/>" method="POST">
            Username: <input type="text" class="input" name="username"><br><br>
            Password: <input type="password" class="input" name="password"><br><br>
<input class="btn-submit" type="submit" value="Login">
<button class="btn-cancel">cancel</button></center></form>
Sign up here <a href="<c:url value="/resources/regform.jsp"/>">Signup</a> if new<br>
<input type="checkbox">Forgot password
</div>
<div id="circle1">
 Copyright&copy ZESCO Limited Issue Tracking WebApp 
</div>
</center>

</body>
</html>