<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Headers</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML HEADERS</h1>

<p>We have learnt that a typical HTML document will have following structure:</p>
<pre class="result">
Document declaration tag 
</pre>
<pre class="result" style="margin-top:5px;">
&lt;html&gt;
   &lt;head&gt;
       Document header related tags
   &lt;/head&gt;

   &lt;body&gt;
       Document body related tags
   &lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This chapter will give a little more detail about header part which is represented by  HTML &lt;head&gt; tag.  The  &lt;head&gt; tag is a container of various important tags like &lt;title&gt;, &lt;meta&gt;, &lt;link&gt;, &lt;base&gt;, &lt;style&gt;, &lt;script&gt;, and &lt;noscript&gt; tags.</p>
<h2>The HTML &lt;title&gt; Tag</h2>
<p>The HTML &lt;title&gt; tag is used for specifying the title of the HTML document. Following is an example to give a title to an HTML document:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Title Tag Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello, World!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Hello, World!</p>
</div>

<h2>The HTML &lt;meta&gt; Tag</h2>
<p>The HTML &lt;meta&gt; tag is used to provide metadata about the HTML document which includes information about page expiry, page author, list of keywords, page description etc.</p>
<p>Following are few of the important usages of &lt;meta&gt; tag inside an HTML document:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Meta Tag Example&lt;/title&gt;

&lt;!-- Provide list of keywords --&gt;
&lt;meta name="keywords" content="C, C++, Java, PHP, Perl, Python"&gt;

&lt;!-- Provide description of the page --&gt;
&lt;meta name="description" content="Simply Easy Learning by Tutorials Point"&gt;

&lt;!-- Author information --&gt;
&lt;meta name="author" content="Tutorials Point"&gt;

&lt;!-- Page content type --&gt;
&lt;meta http-equiv="content-type" content="text/html; charset=UTF-8"&gt;

&lt;!-- Page refreshing delay --&gt;
&lt;meta http-equiv="refresh" content="30"&gt;

&lt;!-- Page expiry --&gt;
&lt;meta http-equiv="expires" content="Wed, 21 June 2006 14:25:27 GMT"&gt;

&lt;!-- Tag to tell robots not to index the content of a page --&gt;
&lt;meta name="robots" content="noindex, nofollow"&gt;

&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello, World!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Hello, World!</p>
</div>
<h2>The HTML &lt;base&gt; Tag</h2>
<p>The HTML &lt;base&gt; tag is used for specifying the base URL for all relative URLs in a page, which means all the other URLs will be concatenated into base URL while locating for the given item.</p>
<p>For example, all the given pages and images will be searched after prefixing the given URLs with base URL http://www.tutorialspoint.com/ directory:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Base Tag Example&lt;/title&gt;
&lt;base href="http://www.tutorialspoint.com/" /&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;img src="/images/logo.png" alt="Logo Image"/&gt;
&lt;a href="/html/index.htm" title="HTML Tutorial"/&gt;HTML Tutorial&lt;/a&gt; 

&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<img src=".\Images\test1.png" alt="Logo Image"/>
<a href="HTMLPage.jsp" title="HTML Tutorial"/><b>HTML Tutorial</b></a> 
</div>
<p>But if you change base URL to something else, for example, if base URL is http://www.tutorialspoint.com/home then image and other given links will become like http://www.tutorialspoint.com/home/images/logo.png and http://www.tutorialspoint.com/home/html/index.htm </p>
<h2>The HTML &lt;link&gt; Tag</h2>
<p>The HTML &lt;link&gt; tag is used to specify relationships between the current document and external resource. Following is an example to  link an external style sheet file available in <b>css</b> sub-directory within web root:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML link Tag Example&lt;/title&gt;
&lt;base href="HTMLPage.jsp" /&gt;
&lt;link rel="stylesheet" type="text/css" href="/css/style.css"&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello, World!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Hello, World!</p>
</div>

<h2>The HTML &lt;style&gt; Tag</h2>
<p>The HTML &lt;style&gt; tag is used to specify style sheet for the current HTML document. Following is an example to  define few style sheet rules inside &lt;style&gt; tag:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML style Tag Example&lt;/title&gt;
&lt;base href="http://www.tutorialspoint.com/" /&gt;
&lt;style type="text/css"&gt;
.myclass{
   background-color: #aaa;
   padding: 10px;
}
&lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p class="myclass"&gt;Hello, World!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<style type="text/css">
.myclass{
   background-color: #aaa;
   padding: 10px;
}
</style>
<p class="myclass">Hello, World!</p>
</div>
<p><b>Note: </b>To learn about how Cascading Style Sheet works, kindly check a separate tutorial available at <a href="http://www.tutorialspoint.com/css">http://www.tutorialspoint.com/css</a></p>
<h2>The HTML &lt;script&gt; Tag</h2>
<p>The HTML &lt;script&gt; tag is used to include either external script file or to define internal script for the HTML document. Following is an example where we are using Javascript to define a simple Javascript function:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML script Tag Example&lt;/title&gt;
&lt;base href="http://www.tutorialspoint.com/" /&gt;
&lt;script type="text/javascript"&gt;
function Hello(){
   alert("Hello, World");
}
&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;input type="button" onclick="Hello();" name="ok" value="OK"  /&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result, where you can try to click on the given button:</p>
<div class="result notranslate">
<script type="text/javascript">
function Hello(){
   alert("Hello, World");
}
</script>
<input type="button" onclick="Hello();" name="ok" value="OK"  />
</div>


<br/><br/><br/><br/><br/>



<a href="HMarquees.jsp">Previous</a>
<a href="HStylesheet.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>