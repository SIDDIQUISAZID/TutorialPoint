<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML IFrames</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML IFRAMES</h1>


<p>You can define an inline frame with HTML tag <b>&lt;iframe&gt;</b>. The &lt;iframe&gt; tag is not somehow related to &lt;frameset&gt; tag, instead, it can appear anywhere in your document. The &lt;iframe&gt; tag defines a rectangular region within the document in which the browser can display a separate document, including scrollbars and borders.</p>
<p>The <b>src</b> attribute is used to specify the URL of the document that occupies the inline frame.</p>
<h3>Example</h3>
<p>Following is the example to show how to use the &lt;iframe&gt;:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Iframes&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Document content goes here...&lt;/p&gt;
&lt;iframe src="/html/menu.htm" width="555" height="200"&gt;
   Sorry your browser does not support inline frames.
&lt;/iframe&gt;
&lt;p&gt;Document content also go here...&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Document content goes here...</p>
<iframe src="menu.html" width="555" height="200">
   Sorry your browser does not support inline frames.
</iframe>
<p>Document content can also go here...</p>
</div>
<h2>The &lt;Iframe&gt; Tag Attributes</h2>
<p>Most of the attributes of the &lt;iframe&gt; tag, including <i>name, class, frameborder, id, longdesc, marginheight, marginwidth, name, scrolling, style, and title</i> behave exactly like the corresponding attributes for the &lt;frame&gt; tag.</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>src</td><td>This attribute is used to give the file name that should be loaded in the frame. Its value can be any URL. For example, src="/html/top_frame.htm" will load an HTML file avalaible in html directory.</td></tr>
<tr><td>name</td><td>This attribute allows you to give a name to a frame. It is used to indicate which frame a document should be loaded into. This is especially important when you want to create links in one frame that load pages into an another frame, in which case the second frame needs a name to identify itself as the target of the link.</td></tr>
<tr><td>frameborder</td><td>This attribute specifies whether or not the borders of that frame are shown; it overrides the value given in the frameborder attribute on the &lt;frameset&gt; tag if one is given, and this can take values either 1 (yes) or 0 (no).</td></tr>
<tr><td>marginwidth</td><td>This attribute allows you to specify the width of the space between the left and right of the frame's borders and the frame's content. The value is given in pixels. For example marginwidth="10".</td></tr>
<tr><td>marginheight</td><td>This attribute allows you to specify the height of the space between the top and bottom of the frame's borders and its contents. The value is given in pixels. For example marginheight="10".</td></tr>
<tr><td>noresize</td><td>By default you can resize any frame by clicking and dragging on the borders of a frame. The noresize attribute prevents a user from being able to resize the frame. For example noresize="noresize".</td></tr>
<tr><td>scrolling</td><td>This attribute controls the appearance of the scrollbars that appear on the frame. This takes values either "yes", "no" or "auto". For example scrolling="no" means it should not have scroll bars.</td></tr>
<tr><td>longdesc</td><td>This attribute allows you to provide a link to another page containing a long description of the contents of the frame. For example longdesc="framedescription.htm"</td></tr>
</table>

<br/><br/><br/><br/><br/>



<a href="HFrames.jsp">Previous</a>
<a href="HBlocks.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>