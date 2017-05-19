<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Meta Tags</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML META TAGS</h1>


<p>HTML lets you specify metadata - additional important information about a document in a variety of ways. The META elements can be used to include name/value pairs describing properties of the HTML document, such as author, expiry date, a list of keywords, document author etc.</p>
<p>The <b>&lt;meta&gt;</b> tag is used to provide such additional information. This tag is an empty element and so does not have a closing tag but it carries information within its attributes.</p>
<p>You can include one or more meta tags in your document based on what information you want to keep in your document but in general, meta tags do not impact physical appearance of the document so from appearance point of view, it does not matter if you include them or not.</p>
<h2>Adding Meta Tags to Your Documents</h2>
<p>You can add metadata to your web pages by placing &lt;meta&gt; tags inside the header of the document which is represented by <b>&lt;head&gt;</b> and <b>&lt;/head&gt;</b> tags.  A meta tag can have following attributes in addition to core attributes:</p>
<table class="table table-bordered">
<th >Attribute</th><th>Description</th></tr>
<tr><td>Name</td><td>Name for the property. Can be anything. Examples include, keywords, description, author, revised, generator etc.</td></tr>
<tr><td>content</td><td>Specifies the property's value.</td></tr>
<tr><td>scheme</td><td>Specifies a scheme to interpret the property's value (as declared in the content attribute).</td></tr>
<tr><td>http-equiv</td><td>Used for http response message headers. For example http-equiv can be used to refresh the page or to set a cookie. Values include content-type, expires, refresh and set-cookie.</td></tr>
</table>
<h2>Specifying Keywords</h2>
<p>You can use &lt;meta&gt; tag to specify important keywords related to the document and later these  keywords are used by the search engines while indexing your webpage for searching purpose.</p>
<h3>Example</h3>
<p>Following is an example where we are adding HTML, Meta Tags, Metadata as important keywords about the document.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Meta Tags Example&lt;/title&gt;
&lt;meta name="keywords" content="HTML, Meta Tags, Metadata" /&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello HTML5!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Hello HTML5!</p>
</div>
<h2>Document Description</h2>
<p>You can use &lt;meta&gt; tag to give a short description about the document. This again can be used by various search engines while indexing your webpage for searching purpose.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Meta Tags Example&lt;/title&gt;
&lt;meta name="keywords" content="HTML, Meta Tags, Metadata" /&gt;
&lt;meta name="description" content="Learning about Meta Tags." /&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello HTML5!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<h2>Document Revision Date</h2>
<p>You can use &lt;meta&gt; tag to give information about when last time the document was updated. This information can be used by various web browsers while refreshing your webpage.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Meta Tags Example&lt;/title&gt;
&lt;meta name="keywords" content="HTML, Meta Tags, Metadata" /&gt;
&lt;meta name="description" content="Learning about Meta Tags." /&gt;
&lt;meta name="revised" content="Tutorialspoint, 3/7/2014" /&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello HTML5!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<h2>Document Refreshing</h2>
<p>A &lt;meta&gt; tag can be used to specify a duration after which your web page will keep refreshing automatically.</p>
<h3>Example</h3>
<p>If you want your page keep refreshing after every 5 seconds then use the following syntax.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Meta Tags Example&lt;/title&gt;
&lt;meta name="keywords" content="HTML, Meta Tags, Metadata" /&gt;
&lt;meta name="description" content="Learning about Meta Tags." /&gt;
&lt;meta name="revised" content="Tutorialspoint, 3/7/2014" /&gt;
&lt;meta http-equiv="refresh" content="5" /&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello HTML5!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<h2>Page Redirection</h2>
<p>You can use &lt;meta&gt; tag to redirect your page to any other webpage. You can also specify a duration if you want to redirect the page after a certain number of seconds.</p>
<h3>Example</h3>
<p>Following is an example of redirecting current page to another page after 5 seconds. If you want to redirect page immediately then do not specify <i>content</i> attribute.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Meta Tags Example&lt;/title&gt;
&lt;meta name="keywords" content="HTML, Meta Tags, Metadata" /&gt;
&lt;meta name="description" content="Learning about Meta Tags." /&gt;
&lt;meta name="revised" content="Tutorialspoint, 3/7/2014" /&gt;
&lt;meta http-equiv="refresh" content="5; url=http://www.tutorialspoint.com" /&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello HTML5!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<h2>Setting Cookies</h2>
<p>Cookies are data, stored in small text files on your computer and it is exchanged between web browser and web server to keep track of various infromation based on your web application need.</p>
<p>You can use &lt;meta&gt; tag to store cookies on client side and later this information can be used by the Web Server to track a site visitor.</p>
<h3>Example</h3>
<p>Following is an example of redirecting current page to another page after 5 seconds. If you want to redirect page immediately then do not specify <i>content</i> attribute.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Meta Tags Example&lt;/title&gt;
&lt;meta name="keywords" content="HTML, Meta Tags, Metadata" /&gt;
&lt;meta name="description" content="Learning about Meta Tags." /&gt;
&lt;meta name="revised" content="Tutorialspoint, 3/7/2014" /&gt;
&lt;meta http-equiv="cookie" content="userid=xyz; expires=Wednesday, 08-Aug-15 23:59:59 GMT;" /&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello HTML5!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>If you do not include the expiration date and time, the cookie is considered a session cookie and will be deleted when the user exits the browser.</p>
<p><b>Note: </b>You can check <a href="http://www.tutorialspoint.com/php/php_cookies.htm"><b>PHP and Cookies</b></a> tutorial for a complete detail on Cookies.</p>
<h2>Setting Author Name</h2>
<p>You can set an author name in a web page using meta tag. See an example below:</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Meta Tags Example&lt;/title&gt;
&lt;meta name="keywords" content="HTML, Meta Tags, Metadata" /&gt;
&lt;meta name="description" content="Learning about Meta Tags." /&gt;
&lt;meta name="author" content="Mahnaz Mohtashim" /&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello HTML5!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<h2>Specify Character Set</h2>
<p>You can  use &lt;meta&gt; tag to specify character set used within the webpage.</p>
<h3>Example</h3>
<p>By default, Web servers and Web browsers use ISO-8859-1 (Latin1) encoding to process Web pages. Following is an example to set UTF-8 encoding:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Meta Tags Example&lt;/title&gt;
&lt;meta name="keywords" content="HTML, Meta Tags, Metadata" /&gt;
&lt;meta name="description" content="Learning about Meta Tags." /&gt;
&lt;meta name="author" content="Mahnaz Mohtashim" /&gt;
&lt;meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello HTML5!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>To serve the static page with traditional Chinese characters, the webpage must contain a &lt;meta&gt; tag to set Big5 encoding:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Meta Tags Example&lt;/title&gt;
&lt;meta name="keywords" content="HTML, Meta Tags, Metadata" /&gt;
&lt;meta name="description" content="Learning about Meta Tags." /&gt;
&lt;meta name="author" content="Mahnaz Mohtashim" /&gt;
&lt;meta http-equiv="Content-Type" content="text/html; charset=Big5" /&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello HTML5!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>

<br/><br/><br/><br/><br/>


<a href="HPhraseTags.jsp">Previous</a>
<a href="HComments.jsp">Next</a>




<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>