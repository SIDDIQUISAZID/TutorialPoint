<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Introduction to HTML5</title>
</head>
<body>

<header>
eduOnline
</header>
<h1>Introduction to HTML5</h1>

<p>HTML stands for <b><u>H</u></b>yper<b><u>t</u></b>ext <b><u>M</u></b>arkup <b><u>L</u></b>anguage, and it is the most widely used language to write Web Pages.</p>
<ul class="list">
<li><b>Hypertext</b> refers to the way in which Web pages (HTML documents) are linked together. Thus the link available on a webpage are called Hypertext.</li><br/>
<li>As its name suggests, HTML is a <b>Markup Language</b> which means you use HTML to simply "mark up" a text document with tags that tell a Web browser how to structure it to display.</li><br/>
</ul>
<p>Originally, HTML was developed with the intent of defining the structure of documents like headings, paragraphs, lists, and so forth to facilitate the sharing of scientific information between researchers.</p>
<p>Now, HTML is being widely used to format web pages with the help of different tags available in HTML language.</p>
<h2>Basic HTML Document</h2>
<p>In its simplest form, following is an example of an HTML document:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;This is document title&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h1&gt;This is a heading&lt;/h1&gt;
&lt;p&gt;Document content goes here.....&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>Either you can use <b>Try it</b> option available at the top right corner of the code box to check the result of this HTML code, or let's save it in an HTML file <b>test.htm</b> using your favorite text editor. Finally open it using a web browser like Internet Explorer or Google Chrome, or Firefox etc. It must show the following output:</p>
<img src=".\Images\html_hello_world.jpg" alt="HTML Hello World" />
<h2>HTML Tags</h2>
<p>As told earlier, HTML is a markup language and makes use of various tags to format the content. These tags are enclosed within angle braces <b>&lt;Tag Name&gt;</b>. Except few tags, most of the tags have their corresponding closing tags. For example <b>&lt;html&gt;</b> has its closing tag <b>&lt;/html&gt;</b> and <b>&lt;body&gt;</b> tag has its closing tag <b>&lt;/body&gt;</b> tag etc.</p>
<p>Above example of HTML document uses folloiwng tags:</p>
<table class="table table-bordered">
<tr><th>Tag</th><th>Description</th></tr>
<tr><td>&lt;!DOCTYPE...&gt;</td><td>This tag defines the document type and HTML version.</td></tr>
<tr><td>&lt;html&gt;</td><td>This tag encloses the complete HTML document and mainly comprises of document header which is represented by <b>&lt;head&gt;...&lt;/head&gt;</b> and document body which is represented by <b>&lt;body&gt;...&lt;/body&gt;</b> tags.</td></tr>
<tr><td>&lt;head&gt;</td><td>This tag represents the document's header which can  keep other HTML tags like &lt;title&gt;, &lt;link&gt; etc.</td></tr>
<tr><td>&lt;title&gt;</td><td>The <b>&lt;title&gt;</b> tag is used inside the &lt;head&gt; tag  to mention the document title.</td></tr>
<tr><td>&lt;body&gt;</td><td>This tag represents the document's body which keeps other HTML tags like &lt;h1&gt;, &lt;div&gt;, &lt;p&gt; etc.</td></tr>
<tr><td>&lt;h1&gt;</td><td>This tag represents the heading.</td></tr>
<tr><td>&lt;p&gt;</td><td>This tag represents a paragraph.</td></tr>
</table>
<p>To learn HTML, you will need to study various tags and understand how do they behave while formatting a textual document. Learning HTML is simple as users have to learn the usage of different tags in order to format the text or images to make a beautiful webpage.</p>
<p>World Wide Web Consortium (W3C) recommends to use lowercase tags starting from HTML 4.</p>
<h2>HTML Document Structure</h2>
<p>A typical HTML document will have following structure:</p>
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
<p>We will study all the header and body tags in subsequent chapters, for now let's see what is document declaration tag.</p>
<h2>The &lt;!DOCTYPE&gt; Declaration</h2>
<p>The &lt;!DOCTYPE&gt; declaration tag is used by the web browser to understand the version of the HTML used in the document. Current version of HTML is 5 and it makes use of the following declaration:</p>
<pre class="prettyprint">
&lt;!DOCTYPE html&gt;
</pre>
<p>There are many other declaration types which can be used in HTML document depending on what version of HTML is being used. We will see more details on this while discussing &lt;!DOCTYPE...&gt; tag along with other HTML tags.</p>

<br/><br/><br/>


<a href="HBasicTags.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>