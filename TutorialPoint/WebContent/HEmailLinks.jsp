<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Email Links</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML EMAIL LINKS</h1>


<p>Its not difficult to put an HTML email link on your webpage but it can cause unnecessary spamming problem for your email account.  There are people who can run programs to harvest these types of emails and later use them for spamming in various ways.</p>
<p>You can have another options to  facilitate people to send you emails. One option could be to use HTML forms to collect user data and then use PHP or CGI script to send an email.</p>

<h2>HTML Email Tag</h2>
<p>HTML &lt;a&gt; tag provides you option to specifiy an email address to send an email. While using &lt;a&gt; tag as an email tag, you will use <b>mailto:email address</b> along with <i>href</i> attribute. Following is the syntax of using <b>mailto</b> instead of using http.</p>
<pre class="prettyprint notranslate">
&lt;a href= "mailto:abc@example.com"&gt;Send Email&lt;/a&gt;
</pre>
<p>This code will generate following link which you can use to send email.</p>
<pre class="prettyprint notranslate">
<a href="mailto:abc@example.com" >Send Email</a> 
</pre>
<p>Now if a user clicks this link, it launches one Email Client ( like Lotus Notes, Outlook Express etc. ) installed on your user's computer. There is another risk to use this option to send email because if user do not have email client installed on their computer then it would not be possible to send email.</p>
<h2>Default Settings</h2>
<p>You can specify a default <i>email subject</i> and <i>email body</i> alongwith your email address. Following is the example to use default subject and body.</p>
<pre class="prettyprint notranslate">
&lt;a href="mailto:abc@example.com?subject=Feedback&amp;body=Message"&gt;
Send Feedback
&lt;/a&gt;
</pre>
<p>This code will generate following link which you can use to send email.</p>
<pre class="prettyprint notranslate">
<a href="mailto:abc@example.com?subject=Feedback&amp;body=Message" >Send Feedback</a>
</pre>
<br/><br/><br/><br/><br/>



<a href="HImageLinks.jsp">Previous</a>
<a href="HFrames.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>