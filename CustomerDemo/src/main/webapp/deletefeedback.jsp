<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Feedback</title>

    <link rel="stylesheet" href="Styles/feeddeleteStyle.css">
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
		String fno = request.getParameter("fno");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		String question = request.getParameter("question");
	%>
	
<h1 class = "head">Delete Account</h1>

<form action="fdelete" method="post">
	<table class = "table">
     
   		<tbody>
        <tr>
			<td>Feedback ID:</td>
			<td><input type="text" name="fno" value="<%= fno %>" readonly></td>
		</tr>
		<tr class="active-row">
			<td>Name:</td>
			<td><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
			<td>Contact Email:</td>
			<td><input type="email" name="email" value="<%= email %>" readonly></td>
		</tr>
		<tr class="active-row">
			<td>Subject:</td>
			<td><input type="text" name="subject" value="<%= subject %>" readonly></td>
		</tr>
		<tr>
			<td>Message:</td>
			<td><input type="text" name="message" value="<%= message %>" readonly></td>
		</tr>
		<tr class="active-row">
			<td>Do you satisfy with our service:</td>
			<td><input type="text" name="question" value="<%= question %>" readonly></td>
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


