<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Account</title>

    <link rel="stylesheet" href="Styles/deleteStyle.css">
</head>

<body>

<img src="images\logo.png" class="logo" >

<a href="profile.jsp">
<img src="images\user.png" class="user">
</a>

    <h1 class="logo_topic">FreshCraze</h1>

    <nav class="navbar">
        <a href="HomePageAL.jsp">Home</a>
        <a href="index.jsp">Logout</a>
        <a href="feedbackLog.jsp">Feedback</a>
        <span></span>
    </nav>

<hr class="topic_line">

	<% 
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String nic = request.getParameter("nic");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String password = request.getParameter("pass");
	%>
	
<h1 class = "head">Delete Account</h1>

<form action="delete" method="post">
	<table class = "table">
     
   		<tbody>
        <tr>
			<td>Customer ID:</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		<tr class="active-row">
			<td>Name:</td>
			<td><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
			<td>Address:</td>
			<td><input type="text" name="address" value="<%= address %>" readonly></td>
		</tr>
		<tr class="active-row">
			<td>Phone Number</td>
			<td><input type="tel" name="phone" value="<%= phone %>" readonly></td>
		</tr>
		<tr>
			<td>NIC Number:</td>
			<td><input type="text" name="nic" value="<%= nic %>" readonly></td>
		</tr>
		<tr class="active-row">
			<td>Email:</td>
			<td><input type="email" name="email" value="<%= email %>" readonly></td>
		</tr>
		<tr>
			<td>Gender:</td>
			<td><input type="text" name="gender" value="<%= gender %>"readonly></td>
		</tr>
		<tr class="active-row">
			<td>Password:</td>
			<td><input type="text" name="pass" value="<%= password %>" readonly></td>
		</tr>
    </tbody>
	</table>
	<input type="submit" name="submit" class="sub" value="Delete"><br><br><br>
</form>

<hr class="footer_line">

<div class="footer">
    <a href="link" target="_blank">
    <button type="button" class="help_button">Help and Support</button>
    </a>

    <div class="fb_icon">
        <a href="https://www.facebook.com/" target="_blank"><img src="images/facebook.png"></a>
    </div>

    <div class="insta_icon">
        <a href="https://www.instagram.com/" target="_blank"><img src="images/insta.png"></a>
    </div>

    <div class="twitt_icon">
        <a href="https://www.twitter.com/" target="_blank"><img src="images/Twitter.png"></a>
    </div>

    <div class="yt_icon">
        <a href="https://www.youtube.com/" target="_blank"><img src="images/yt.png"></a>
    </div>
</div>

<div class="contacts">
    <h1 class="link">www.freshcraze.lk</h1>
    <h1>Hotline: +94 225 225 25 / +94 225 225 35</h1>
</div>

</body>
</html>


