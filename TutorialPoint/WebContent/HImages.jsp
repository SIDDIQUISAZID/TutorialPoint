<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Images</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML IMAGES</h1>

<p>Images are very important to beautify as well as to depict many complex concepts in simple way on your web page. This tutorial will take you through simple steps to use images in your web pages.</p>
<h2>Insert Image</h2>
<p>You can insert any image in your web page by using <b>&lt;img&gt;</b> tag. Following is the simple syntax to use this tag.</p>
<pre class="prettyprint notranslate">
&lt;img src="Image URL" ... attributes-list/&gt;
</pre>
<p>The &lt;img&gt; tag is an empty tag, which means that it  can contain only list of attributes and it has no closing tag.</p>
<h3>Example</h3>
<p>To try following example, let's keep our HTML file test.htm and image file test.png in the same directory:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Using Image in Webpage&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Simple Image Insert&lt;/p&gt;
&lt;img src="/html/images/test.png" alt="Test Image" /&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Simple Image Insert</p>
<img src=".\Images\test1.png" alt="Test Image" />
</div>
<p>You can use PNG, JPEG or GIF image file based on your comfort but make sure you specify correct image file name in <b>src</b> attribute. Image name is always case sensitive.</p>
<p>The <b>alt</b> attribute is a mandatory attribute which specifies an alternate text for an image, if the image cannot be displayed.</p>
<h2>Set Image Location</h2>
<p>Usually we keep our all the images in a separate directory. So let's keep HTML file test.htm in our home directory and create a subdirectory <b>images</b> inside the home directory where we will keep our image test.png.</p>
<h3>Example</h3>
<p>Assuming our image location is "/html/image/test.png", try the following example:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Using Image in Webpage&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Simple Image Insert&lt;/p&gt;
&lt;img src="/html/images/test.png" alt="Test Image" /&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Simple Image Insert</p>
<img src=".\Images\test2.png" alt="Test Image" />
</div>
<h2>Set Image Width/Height</h2>
<p>You can set image width and height based on your requirement using <b>width</b> and <b>height</b> attributes. You can specify width and height of the image in terms of either pixels or percentage of its actual size.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Set Image Width and Height&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Setting image width and height&lt;/p&gt;
&lt;img src="/html/images/test.png" alt="Test Image" width="150" height="100"/&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Setting image width and height</p>
<img src=".\Images\test3.png" alt="Test Image" width="150" height="100"/>
</div>
<h2>Set Image Border</h2>
<p>By default image will have a border around it, you can specify border thickness in terms of pixels using <b>border</b> attribute. A thickness of 0 means, no border around the picture.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Set Image Border&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Setting image Border&lt;/p&gt;
&lt;img src="/html/images/test.png" alt="Test Image" border="3"/&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Setting image Border</p>
<img src=".\Images\test4.png" alt="Test Image" style="border:3px solid #000;"/>
</div>
<h2>Set Image Alignment</h2>
<p>By default image will align at the left side of the page, but you can use <b>align</b> attribute to set it in the center or right.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Set Image Alignment&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Setting image Alignment&lt;/p&gt;
&lt;img src="/html/images/test.png" alt="Test Image" border="3" align="right"/&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate" style="text-align:right">
<p>Setting image Alignment</p>
<img src=".\Images\test5.png" alt="Test Image" style="border:3px solid #000;"/>
</div>

<br/><br/><br/><br/><br/>



<a href="HComments.jsp">Previous</a>
<a href="HTables.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>