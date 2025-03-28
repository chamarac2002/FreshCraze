<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Feedback</title>

    <link rel="stylesheet" href="Styles/feedaccount.Style.css">
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
	<c:forEach var="feed" items="${feedDetails}">
	
	<h1 class = "head">Feedback Details</h1>
	
	<table class = "table">
		
		
		<c:set var="fno" value="${feed.fno}"/>
		<c:set var="name" value="${feed.name}"/>
		<c:set var="email" value="${feed.email}"/>
		<c:set var="subject" value="${feed.subject}"/>
		<c:set var="message" value="${feed.message}"/>
		<c:set var="question" value="${feed.question}"/>
	
		<tr>
			<td>Feedback Number:</td>
			<td>${feed.fno}</td>
		</tr>
		<tr class="active-row">
			<td>Name:</td>
			<td>${feed.name}</td>
		</tr>
		<tr>
			<td>Contact Email:</td>
			<td>${feed.email}</td>
		</tr>
		<tr class="active-row">
			<td>Subject:</td>
			<td>${feed.subject}</td>
		</tr>
		<tr>
			<td>Message:</td>
			<td>${feed.message}</td>
		</tr>
		<tr class="active-row">
			<td>Do you satisfy with our service:</td>
			<td>${feed.question}</td>
		</tr>
    </tbody>
	
	</table>
	
	<c:url value="updatefeedback.jsp" var="feedupdate">
		<c:param name="fno" value="${fno}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="subject" value="${subject}"/>
		<c:param name="message" value="${message}"/>
		<c:param name="question" value="${question}"/>
	</c:url>
	
	<a href="${feedupdate}">
	<input type="button" name="fupdate" class="sub1" value="Edit My Feedback">
	</a>
	
	<br><br>
	<c:url value="deletefeedback.jsp" var="feeddelete">
		<c:param name="fno" value="${fno}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="subject" value="${subject}"/>
		<c:param name="message" value="${message}"/>
		<c:param name="question" value="${question}"/>
	</c:url>
	
	<a href="${feeddelete}">
	<input type="button" name="fdelete" class="sub2" value="Delete My Feedback">
	</a>
</c:forEach>
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
	