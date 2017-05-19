<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Layouts</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML LAYOUTS</h1>

<p>A webpage layout is very important to give better look to your website. It takes considerable time to design a website's layout with great look and feel.</p>
<p>Now a days, all modern websites are using CSS and Javascript based framework to come up with responsive and dynamic websites but you can  create a good layout using simple HTML tables or division tags in combination with other formatting tags. This chapter will give you few examples on how to create a simple but working layout for your webpage using pure HTML and its attributes.</p>
<h2>HTML Layout - Using Tables</h2>
<p>The simplest and most popular way of creating layouts is using HTML &lt;table&gt; tag. These tables are arranged in columns and rows, so you can utilize these rows and columns in whatever way you like.</p>
<h3>Example</h3>
<p>For example, the following HTML layout example is achieved using a table with 3 rows and 2 columns but the header and footer column spans both columns using the colspan attribute:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Layout using Tables&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table width="100%" border="0"&gt;
  &lt;tr&gt;
    &lt;td colspan="2" bgcolor="#b5dcb3"&gt;
      &lt;h1&gt;This is Web Page Main title&lt;/h1&gt;
    &lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr valign="top"&gt;
    &lt;td bgcolor="#aaa" width="50"&gt;
      &lt;b&gt;Main Menu&lt;/b&gt;&lt;br /&gt;
      HTML&lt;br /&gt;
      PHP&lt;br /&gt;
      PERL...
    &lt;/td&gt;
    &lt;td bgcolor="#eee" width="100" height="200"&gt;
        Technical and Managerial Tutorials
    &lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td colspan="2" bgcolor="#b5dcb3"&gt;
      &lt;center&gt;
      Copyright &copy; 2016 eduOnline
      &lt;/center&gt;
    &lt;/td&gt;
  &lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>

<p>This will produce following result:</p>
<div class="result notranslate">
<table width="100%"  border="0">
  <tr>
    <td colspan="2" bgcolor="#b5dcb3">
      <h1>This is Web Page Main title</h1>
    </td>
  </tr>
  <tr valign="top">
    <td bgcolor="#aaa" width="50">
      <b>Main Menu</b><br />
      HTML<br />
      PHP<br />
      PERL...
    </td>
    <td bgcolor="#eee" width="100" height="200">
        Technical and Managerial Tutorials
    </td>
  </tr>
  <tr>
    <td colspan="2" bgcolor="#b5dcb3">
        <center>
      Copyright © 2016  eduOnline
        </center>
    </td>
  </tr>
</table>
</div>

<h2>Multiuple Columns Layout - Using Tables</h2>
<p>You can design your webpage to put your web content in multiple pages. You can keep your content in middle column and you can use left column to use menu and right column can be used to put advertisement or some other stuff. This layout will be very similar to what we have at our website tutorialspoint.com.</p>
<h3>Example</h3>
<p>Here is an example to create three column layout:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Three Column HTML Layout&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table width="100%" border="0"&gt;
  &lt;tr valign="top"&gt;
    &lt;td bgcolor="#aaa" width="20%"&gt;
      &lt;b&gt;Main Menu&lt;/b&gt;&lt;br /&gt;
      HTML&lt;br /&gt;
      PHP&lt;br /&gt;
      PERL...
    &lt;/td&gt;
    &lt;td bgcolor="#b5dcb3" height="200" width="60%"&gt;
        Technical and Managerial Tutorials
    &lt;/td&gt;
    &lt;td bgcolor="#aaa" width="20%"&gt;
      &lt;b&gt;Right Menu&lt;/b&gt;&lt;br /&gt;
      HTML&lt;br /&gt;
      PHP&lt;br /&gt;
      PERL...
    &lt;/td&gt;
   &lt;/tr&gt;
&lt;table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<table width="100%"  border="0">
  <tr valign="top">
    <td bgcolor="#aaa" width="20%">
      <b>Main Menu</b><br />
      HTML<br />
      PHP<br />
      PERL...
    </td>
    <td bgcolor="#b5dcb3" height="200" width="60%">
        Technical and Managerial Tutorials
    </td>
    <td bgcolor="#aaa" width="20%">
        <b>Right Menu</b><br />
      HTML<br />
      PHP<br />
      PERL...
    </td>
   </tr>
</table>
</div>
<h2>HTML Layouts - Using DIV, SPAN</h2>
<p>The &lt;div&gt; element is a block level element used for grouping HTML elements. While the &lt;div&gt; tag is a block-level element, the HTML &lt;span&gt; element is used for grouping elements at an inline level.</p>
<p>Although we can achieve pretty nice layouts with HTML tables, but tables weren't really designed as a layout tool. Tables are more suited to presenting tabular data.</p>
<blockquote><b>Note: </b>This example makes use of Cascading Style Sheet (CSS), so before understanding this example you need to have a better understanding on how CSS works.</blockquote>
<h3>Example</h3>
<p>Here we will try to achieve same result using &lt;div&gt; tag along with CSS,  whatever you have achieved using &lt;table&gt; tag in previous example.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Layouts using DIV, SPAN&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;div style="width:100%"&gt;
  &lt;div style="background-color:#b5dcb3; width:100%"&gt;
      &lt;h1&gt;This is Web Page Main title&lt;/h1&gt;
  &lt;/div&gt;
  &lt;div style="background-color:#aaa; height:200px;width:100px;float:left;"&gt;
      &lt;div&gt;&lt;b&gt;Main Menu&lt;/b&gt;&lt;/div&gt;
      HTML&lt;br /&gt;
      PHP&lt;br /&gt;
      PERL...
  &lt;/div&gt;
  &lt;div style="background-color:#eee; height:200px;width:350px;float:left;"&gt;
    &lt;p&gt;Technical and Managerial Tutorials&lt;/p&gt;
  &lt;/div&gt;
  &lt;div style="background-color:#aaa; height:200px;width:100px;float:right;"&gt;
      &lt;div&gt;&lt;b&gt;Right Menu&lt;/b&gt;&lt;/div&gt;
      HTML&lt;br /&gt;
      PHP&lt;br /&gt;
      PERL...
  &lt;/div&gt;
  &lt;div style="background-color:#b5dcb3;clear:both"&gt;
  &lt;center&gt;
      Copyright © 2016 eduOnline
  &lt;/center&gt;
  &lt;/div&gt;
&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<div style="width:100%">
  <div style="background-color:#b5dcb3; width:100%">
      <h1>This is Web Page Main title</h1>
  </div>
  <div style="background-color:#aaa; height:200px;width:100px;float:left;">
      <div><b>Main Menu</b></div>
      HTML<br />
      PHP<br />
      PERL...
  </div>
  <div style="background-color:#eeeeee; height:200px;width:350px;float:left;">
	<p>Technical and Managerial Tutorials</p>
  </div>
    <div style="background-color:#aaa; height:200px;width:100px;float:right;">
      <div><b>Right Menu</b></div>
      HTML<br />
      PHP<br />
      PERL...
  </div>
  <div style="background-color:#b5dcb3;clear:both">
  <center>
      Copyright © 2016 eduOnline
  </center>
  </div>
</div>
</div>
<p>You can create better layout using DIV, SPAN along with CSS. For more information on CSS, please refer to CSS Tutorial.</p>



<br/><br/><br/><br/><br/>



<a href="HJavascript.jsp">Previous</a>



<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>