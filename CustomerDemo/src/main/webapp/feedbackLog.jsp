<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>

    <link rel="stylesheet" href="Styles/feedbackLogStyle.css">
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

<img src="images\feed.png" class="feed" >

<div class = "feedlogo1"> 
    <a href="feedback.jsp">
    <button type="button" class="add">Add Feedback</button>
    </a>
</div>

<div class = "feedlogo2"> 
    <a href="feedprofile.jsp">
    <button type="button" class="view">View My Feedbacks</button>
    </a>
</div>

<br>
<br>
<br>
<br>

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