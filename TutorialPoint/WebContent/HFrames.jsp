<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Frames</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML FRAMES</h1>

<p>HTML frames are used to divide your browser window into multiple sections where each section can load a separate HTML document. A collection of frames in the browser window is known as a frameset. The window is divided into frames in a similar way the tables are organized: into rows and columns.</p>
<h2>Disadvantages of Frames</h2>
<p>There are few drawbacks with using frames, so it's never recommended to use frames in your webpages:</p>
<ul class="list">
<li>Some smaller devices cannot cope with frames often because their screen is not big enough to be divided up.</li>
<li>Sometimes your page will be displayed differently on different computers due to different screen resolution.</li>
<li>The browser's <i>back button</i> might not work as the user hopes.</li>
<li>There are still few browsers that do not support frame technology.</li>
</ul>
<h2>Creating Frames</h2>
<p>To use frames on a page we use &lt;frameset&gt; tag instead of &lt;body&gt; tag. The &lt;frameset&gt; tag defines how to divide the window into frames. The <b>rows</b> attribute of &lt;frameset&gt; tag defines horizontal frames and <b>cols</b> attribute defines vertical frames. Each frame is indicated by &lt;frame&gt; tag and it defines which HTML document shall open into the frame.</p>
<h3>Example</h3>
<p>Following is the example to create three horizontal frames:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Frames&lt;/title&gt;
&lt;/head&gt;
&lt;frameset rows="10%,80%,10%"&gt;
   &lt;frame name="top" src="/html/top_frame.htm" /&gt;
   &lt;frame name="main" src="/html/main_frame.htm" /&gt;
   &lt;frame name="bottom" src="/html/bottom_frame.htm" /&gt;
   &lt;noframes&gt;
   &lt;body&gt;
      Your browser does not support frames.
   &lt;/body&gt;
   &lt;/noframes&gt;
&lt;/frameset&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<img src=".\Images\html_frames.jpg" alt="HTML Horizontal Frames" />
</div>
<h3>Example</h3>
<p>Let's put above example as follows, here we replaced rows attribute by cols and changed their width. This will create all the three frames vertically:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Frames&lt;/title&gt;
&lt;/head&gt;
&lt;frameset cols="25%,50%,25%"&gt;
   &lt;frame name="left" src="/html/top_frame.htm" /&gt;
   &lt;frame name="center" src="/html/main_frame.htm" /&gt;
   &lt;frame name="right" src="/html/bottom_frame.htm" /&gt;
   &lt;noframes&gt;
   &lt;body&gt;
      Your browser does not support frames.
   &lt;/body&gt;
   &lt;/noframes&gt;
&lt;/frameset&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<img src=".\Images\html_vertical_frames.jpg" alt="HTML Vertical Frames" />
</div>
<h2>The &lt;frameset&gt; Tag Attributes</h2>
<p>Following are important attributes of the &lt;frameset&gt; tag:</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>cols</td><td>specifies how many columns are contained in the frameset and the size of each column. You can specify the width of each column in one of four ways:
	<ul>
	<li><p>Absolute values in pixels. For example to create three vertical frames, use <i>cols="100, 500,100"</i>.</p></li>
	<li><p>A percentage of the browser window. For example to create three vertical frames, use <i>cols="10%, 80%,10%"</i>.</p></li>
	<li><p>Using a wildcard symbol. For example to create three  vertical frames, use <i>cols="10%, *,10%"</i>. In this case wildcard takes remainder of the window.</p></li>
	<li><p>As relative widths of the browser window. For example to create three vertical  frames, use <i>cols="3*,2*,1*"</i>. This is an alternative to percentages. You can use relative widths of the browser window. Here the window is divided into sixths: the first column takes up half of the window, the second takes one third, and the third takes one sixth.</p></li>
	</ul>
</td></tr>
<tr><td>rows</td><td>This attribute works just like the cols attribute and takes the same values, but it is used to specify the rows in the frameset. For example to create two horizontal frames, use <i>rows="10%, 90%"</i>. You can specify the height of each row in the same way as explained  above for columns.</td></tr>
<tr><td>border</td><td>This attribute specifies the width of the border of each frame in pixels. For example border="5". A value of zero means no border.</td></tr>
<tr><td>frameborder</td><td>This attribute specifies whether a three-dimensional border should be displayed between frames. This attrubute takes value either 1 (yes)  or 0 (no). For example frameborder="0" specifies no border.</td></tr>
<tr><td>framespacing</td><td>This attribute specifies the amount of space between frames in a frameset. This can take any integer value. For example framespacing="10" means there should be 10 pixels spacing between each frames.</td></tr>
</table>
<h2>The &lt;frame&gt; Tag Attributes</h2>
<p>Following are important attributes of &lt;frame&gt; tag:</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>src</td><td>This attribute is used to give the file name that should be loaded in the frame. Its value can be any URL. For example, src="/html/top_frame.htm" will load an HTML file available in html directory.</td></tr>
<tr><td>name</td><td>This attribute allows you to give a name to a frame. It is used to indicate which frame a document should be loaded into. This is especially important when you want to create links in one frame that load pages into an another frame, in which case the second frame needs a name to identify itself as the target of the link.</td></tr>
<tr><td>frameborder</td><td>This attribute specifies whether or not the borders of that frame are shown; it overrides the value given in the frameborder attribute on the &lt;frameset&gt; tag if one is given, and this can take values either 1 (yes) or 0 (no).</td></tr>
<tr><td>marginwidth</td><td>This attribute allows you to specify the width of the space between the left and right of the frame's borders and the frame's content. The value is given in pixels. For example marginwidth="10".</td></tr>
<tr><td>marginheight</td><td>This attribute allows you to specify the height of the space between the top and bottom of the frame's borders and its contents. The value is given in pixels. For example marginheight="10".</td></tr>
<tr><td>noresize</td><td>By default you can resize any frame by clicking and dragging on the borders of a frame. The noresize attribute prevents a user from being able to resize the frame. For example noresize="noresize".</td></tr>
<tr><td>scrolling</td><td>This attribute controls the appearance of the scrollbars that appear on the frame. This takes values either "yes", "no" or "auto". For example scrolling="no" means it should not have scroll bars.</td></tr>
<tr><td>longdesc</td><td>This attribute allows you to provide a link to another page containing a long description of the contents of the frame. For example longdesc="framedescription.htm"</td></tr>
</table>
<h2>Browser Support for Frames</h2>
<p>If a user is using any old browser or any browser which does not support frames then &lt;noframes&gt; element should be displayed to the user.</p>
<p>So you must place a &lt;body&gt; element inside the &lt;noframes&gt; element because the &lt;frameset&gt; element is supposed to replace the &lt;body&gt; element, but if a browser does not understand &lt;frameset&gt; element then it should understand what is inside the &lt;body&gt; element which is contained in a &lt;noframes&gt; element.</p>
<p>You can put some nice message for your user having old browsers. For example <i>Sorry!! your browser does not support frames.</i> as shown in the above example.</p>
<h2>Frame's name and target attributes</h2>
<p>One of the most popular uses of frames is to place navigation bars in one frame and then load main pages into a separate frame.</p>
<p>Let's see following example where a test.htm file has following code:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Target Frames&lt;/title&gt;
&lt;/head&gt;
&lt;frameset cols="200, *"&gt;
   &lt;frame src="/html/menu.htm" name="menu_page" /&gt;
   &lt;frame src="/html/main.htm" name="main_page" /&gt;
   &lt;noframes&gt;
   &lt;body&gt;
      Your browser does not support frames.
   &lt;/body&gt;
   &lt;/noframes&gt;
&lt;/frameset&gt;
&lt;/html&gt;
</pre>
<p>Here we have created two columns  to fill with two frames. The first frame is 200 pixels wide and will contain the navigation menubar implemented by <b>menu.htm</b> file. The second column fills in remaining space and will contain the main part of the page and it is implemented by <b>main.htm</b> file. For all the three links available in menubar, we have mentioned target frame as <b>main_page</b>, so whenever you click any of the links in menubar, available link will open in main_page.</p>
<p>Following is the content of menu.htm file</p>
<pre class="prettyprint notranslate">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;body bgcolor="#4a7d49"&gt;
&lt;a href="http://www.google.com" target="main_page"&gt;Google&lt;/a&gt;
&lt;br /&gt;&lt;br /&gt;
&lt;a href="http://www.microsoft.com" target="main_page"&gt;Microsoft&lt;/a&gt;
&lt;br /&gt;&lt;br /&gt;
&lt;a href="http://news.bbc.co.uk" target="main_page"&gt;BBC News&lt;/a&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>Following is the content of main.htm file:</p>
<pre class="prettyprint notranslate">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;body bgcolor="#b5dcb3"&gt;
&lt;h3&gt;This is main page and content from any link will be displayed here.&lt;/h3&gt;
&lt;p&gt;So now click any link and see the result.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>When we load <b>test.htm</b> file, it produces following result:</p>
<div class="result notranslate">
<img src=".\Images\frame_target_attribute.jpg" alt="Frame Target Attribute" />
</div>
<p>Now you can try to click links available in the left panel and see the result. The <i>target</i> attribute can also take one of the following values:</p>
<table class="table table-bordered">
<tr><th>Option</th><th>Description</th></tr>
<tr><td>_self</td><td>Loads the page into the current frame.</td></tr>
<tr><td>_blank</td><td>Loads a page into a new browser window.opening a new window.</td></tr>
<tr><td>_parent</td><td>Loads the page into the parent window, which in the case of a single frameset is the main browser window.</td></tr>
<tr><td>_top</td><td>Loads the page into the browser window, replacing any current frames.</td></tr>
<tr><td>target frame</td><td>Loads the page into a named target frame.</td></tr>
</table>

<br/><br/><br/><br/><br/>



<a href="HEmailLinks.jsp">Previous</a>
<a href="HIFrames.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>