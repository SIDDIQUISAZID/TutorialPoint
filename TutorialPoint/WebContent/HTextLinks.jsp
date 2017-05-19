<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Text Links</title>
</head>
<body>


<header>
eduOnline
</header>


<h1>HTML TEXT LINKS</h1>

<p>A webpage can contain various links that take you directly to other pages and even specific parts of a given page. These links are known as hyperlinks.</p>
<p>Hyperlinks allow visitors to navigate between Web sites by clicking on words, phrases, and images. Thus you can create hyperlinks using text or images available on a webpage.</p>
<p><b>Note: </b>I recommend to go through a short tutorial on <a href="/html/understanding_url_tutorial.htm"><b>Understanding URL</b></a></p>
<h2>Linking Documents</h2>
<p>A link is specified using HTML tag &lt;a&gt;. This tag is called <b>anchor tag</b> and anything between the opening &lt;a&gt; tag and the closing &lt;/a&gt; tag becomes part of the link and a user can click that part to reach to the linked document. Following is the simple syntax to use &lt;a&gt; tag.</p>
<pre class="prettyprint notranslate">
&lt;a href="Document URL" ... attributes-list&gt;Link Text&lt;/a&gt;
</pre>
<h3>Example</h3>
<p>Let's try following example which links http://www.tutorialspoint.com at your page:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Hyperlink Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Click following link&lt;/p&gt;
&lt;a href="http://www.tutorialspoint.com" target="_self"&gt;Tutorials Point&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result, where you can click on the link generated <b>Tutorials Point</b> to reach to the home page of Tutorials Point.</p>
<div class="result notranslate">
<p>Click following link</p>
<a href="http://www.tutorialspoint.com" target="_self">Tutorials Point</a>
</div>
<h2>The target Attribute</h2>
<p>We have used <b>target</b> attribute in our previous example. This attribute is used to specify the location where linked document is opened. Following are possible options:</p>
<table class="table table-bordered">
<tr><th>Option</th><th>Description</th></tr>
<tr><td>_blank</td><td>Opens the linked document in a new window or tab.</td></tr>
<tr><td>_self</td><td>Opens the linked document in the same frame.</td></tr>
<tr><td>_parent</td><td>Opens the linked document in the parent frame.</td></tr>
<tr><td>_top</td><td>Opens the linked document in the full body of the window.</td></tr>
<tr><td>targetframe</td><td>Opens the linked document in a named <i>targetframe</i>.</td></tr>
</table>
<h3>Example</h3>
<p>Try following example to understand basic difference in few options given for target attribute.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Hyperlink Example&lt;/title&gt;
&lt;base href="http://www.tutorialspoint.com/"&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Click any of the following links&lt;/p&gt;
&lt;a href="/html/index.htm" target="_blank"&gt;Opens in New&lt;/a&gt; |
&lt;a href="/html/index.htm" target="_self"&gt;Opens in Self&lt;/a&gt; |
&lt;a href="/html/index.htm" target="_parent"&gt;Opens in Parent&lt;/a&gt; |
&lt;a href="/html/index.htm" target="_top"&gt;Opens in Body&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result, where you can click on different links to understand the difference between various options given for target attribute.</p>
<div class="result notranslate">
<p>Click any of the following links</p>
<a href="/html/index.htm" target="_blank">Opens in New</a> |
<a href="/html/index.htm" target="_self">Opens in Self</a> |
<a href="/html/index.htm" target="_parent">Opens in Parent</a> |
<a href="/html/index.htm" target="_top">Opens in Body</a>
</div>
<h2>Use of Base Path</h2>
<p>When you link HTML documents related to the same website, it is not required to give a complete URL for every link. You can get rid of it if you use <b>&lt;base&gt;</b> tag in your HTML document header. This tag is used to give a base path for all the links. So your browser will concatenate given relative path to this base path and will make a complete URL.</p>
<h3>Example</h3>
<p>Following example makes use of &lt;base&gt; tag to specify base URL and later we can use relative path to all the links instead of giving complete URL for every link.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Hyperlink Example&lt;/title&gt;
&lt;base href="http://www.tutorialspoint.com/"&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Click following link&lt;/p&gt;
&lt;a href="/html/index.htm" target="_blank"&gt;HTML Tutorial&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result, where you can click on the link generated <b>HTML Tutorial</b> to reach to the HTML tutorial.</p>
<p>Now given URL <b>&lt;a href="/html/index.htm"</b> is being considered as <b>&lt;a href="http://www.tutorialspoint.com/html/index.htm"</b>.</p>
<div class="result notranslate">
<p>Click following link</p>
<a href="/html/index.htm" target="_blank">HTML Tutorial</a>
</div>
<h2>Linking to a Page Section</h2>
<p>You can create a link to a particular section of a given webpage by using <b>name</b> attribute. This is a two step process.</p>
<p>First create a link to the place where you want to reach with-in a webpage and name it using &lt;a...&gt; tag as follows:</p>
<pre class="prettyprint notranslate">
&lt;h1&gt;HTML Text Links &lt;a name="top"&gt;&lt;/a&gt;&lt;/h1&gt;
</pre>
<p>Second step is to create a hyperlink to link the document and place where you want to reach:</p>
<pre class="prettyprint notranslate">
&lt;a href="/html/html_text_links.htm#top"&gt;Go to the Top&lt;/a&gt;
</pre>
<p>This will produce following link, where you can click on the link generated <b>Go to the Top</b> to reach to the top of the HTML  Text Link tutorial.</p>
<table class="src" cellpadding="5"><tr><td>
<a href="/html/html_text_links.htm#top">Go to the Top</a>  
</td></tr></table>
<h2>Setting Link Colors</h2>
<p>You can set colors of your links, active links and visited links using <b>link</b>, <b>alink</b> and <b>vlink</b> attributes of &lt;body&gt; tag.</p>
<h3>Example</h3>
<p>Save the following in test.htm and open it in any web browser to see how <b>link</b>, <b>alink</b> and <b>vlink</b> attributes work.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Hyperlink Example&lt;/title&gt;
&lt;base href="http://www.tutorialspoint.com/"&gt;
&lt;/head&gt;
&lt;body alink="#54A250" link="#040404" vlink="#F40633"&gt;
&lt;p&gt;Click following link&lt;/p&gt;
&lt;a href="/html/index.htm" target="_blank" &gt;HTML Tutorial&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result. Just check color of the link before clicking on it, next check its color when you activate it and when the link has been visited.</p>
<div class="result notranslate">
<body alink="#54A250" link="#040404" vlink="#F40633">
<p>Click following link</p>
<a href="/html/index.htm" target="_blank" >HTML Tutorial</a>
</body>
</div>
<h2>Download Links</h2>
<p>You can create text link to make your PDF, or DOC or ZIP files downloadable. This is very simple, you just need to give complete URL of the downloadable file as follows:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Hyperlink Example&lt;/title&gt;
&lt;/head&gt;
&lt;a href="http://www.tutorialspoint.com/page.pdf"&gt;Download PDF File&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following link and will be used to download a file.</p>
<div class="result notranslate">
<a href="http://www.tutorialspoint.com/page.pdf">Download PDF File</a>
</div>
<h2>File Download Dialog Box</h2>
<p>Sometimes it is desired that you want to give an option where a user will click a link and it will pop up a "File Download" box to the user in stead of displaying actual content. This is very easy and can be achieved using an HTTP header in your HTTP response.</p>
<p>For example, if you want make a <b>FileName</b> file downloadable from a given link then its syntax will be as follows.</p>
<pre class="prettyprint notranslate">
#!/usr/bin/perl

# Addtional HTTP Header
print "<b>Content-Type:</b>application/octet-stream; name=\"FileName\"\r\n";
print "<b>Content-Disposition:</b> attachment; filename=\"FileName\"\r\n\n";

# Open the target file and list down its content as follows
open( FILE, "&lt;FileName" );
while(read(FILE, $buffer, 100)){
   print("$buffer");
}
</pre>


<br/><br/><br/><br/><br/>



<a href="HLists.jsp">Previous</a>
<a href="HImageLinks.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>