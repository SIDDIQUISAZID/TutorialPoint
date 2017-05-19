<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Javascript</title>
</head>
<body>



<header>
eduOnline
</header>

<h1>HTML JAVASCRIPT</h1>

<p>A <b>script</b> is a small piece of program that can add interactivity to your website. For example, a script could generate a pop-up alert box message, or provide a dropdown menu. This script could be written using Javascript or VBScript.</p>
<p>You can write various small functions, called event handlers using any of the scripting language and then you can trigger those functions using HTML attributes.</p>
<p>Now a days only <b>Javascript</b> and associated frameworks are being used by most of the web developers, VBScript is not even supported by various major browsers.</p>
<p>You can keep Javascript code in a separate file and then include it whereever it's needed, or you can define functionality inside HTML document itself. Let's see both the cases one by one with suitable examples.</p>
<h2>External Javascript</h2>
<p>If you are going to define a functionality which will be used in various HTML documents then it's better to keep that functionality in a separate Javascript file and then include that file in your HTML documents. A Javascript file will have extension as <b>.js</b> and it will be included in HTML files using &lt;script&gt; tag.</p>

<h3>Example</h3>
<p>Consider we define  a small function using Javascript in <b>script.js</b> which has following code:</p>
<pre class="prettyprint notranslate">
function Hello()
{
    alert("Hello, World");
}
</pre>
<p>Now let's make use of the above external Javascript file in our following HTML document:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Javascript External Script&lt;/title&gt;
&lt;script src="/html/script.js" type="text/javascript"/&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;input type="button" onclick="Hello();" name="ok" value="Click Me"  /&gt;
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
</style>
<input type="button" onclick="Hello();" name="ok" value="Click Me"  />
</div>
<h2>Internal Script</h2>
<p>You can write your script code directly into your HTML document. Usually we keep script code in header of the document using &lt;script&gt; tag, otherwise there is no restriction and you can put your source code anywhere in the document but inside &lt;script&gt; tag.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Javascript Internal Script&lt;/title&gt;
&lt;base href="http://www.tutorialspoint.com/" /&gt;
&lt;script type="text/javascript"&gt;
function Hello(){
   alert("Hello, World");
}
&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;input type="button" onclick="Hello();" name="ok" value="Click Me"  /&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result, where you can try to click on the given button:</p>
<div class="result notranslate">
<input type="button" onclick="Hello();" name="ok" value="Click Me"  />
</div>

<h2>Event Handlers</h2>
<p>Event handlers are nothing but simply defined functions which can be called against any mouse or keyboard event. You can define your business logic inside your event handler which can vary from a single to 1000s of line code.</p>
<p>Following example explains how to write an event handler. Let's write one simple function <i>EventHandler()</i> in the header of the document. We will call this function when any user brings mouse over a paragraph.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Event Handlers Example&lt;/title&gt;
&lt;base href="http://www.tutorialspoint.com/" /&gt;
&lt;script type="text/javascript"&gt;
function EventHandler(){
   alert("I'm event handler!!");
}
&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p onmouseover="EventHandler();"&gt;Bring your mouse here to see an alert&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>Now this will produce following result. Bring your mouse over this line and see the result:</p>
<div class="result notranslate">
<script type="text/javascript">
function EventHandler(){
   alert("I'm event handler!!");
}
</script>
<p onmouseover="EventHandler();">Bring your mouse here to see an alert</p>
</div>

<h2>Hide Scripts from Older Browsers</h2>
<p>Although most (if not all) browsers these days support Javascript, but still some older browsers don't. If a browser doesn't support JavaScript, instead of running your script, it would display the code to the user. To prevent this, you can simply place HTML comments around the script as shown below.</p>
<pre class="prettyprint notranslate">
<b>JavaScript Example:</b>
&lt;script type="text/javascript"&gt;
&lt;!--
document.write("Hello Javascript!");
//--&gt;
&lt;/script&gt;

<b>VBScript Example:</b>
&lt;script type="text/vbscript"&gt;
&lt;!--
document.write("Hello VBScript!")
'--&gt;
&lt;/script&gt;
</pre>

<h2>The &lt;noscript&gt; Element</h2>
<p>You can also provide alternative info to the users whose browsers don't support scripts and for those users who have disabled script option their browsers. You can do this using the <b>&lt;noscript&gt;</b> tag.</p>

<pre class="prettyprint notranslate">
<b>JavaScript Example:</b>
&lt;script type="text/javascript"&gt;
&lt;!--
document.write("Hello Javascript!");
//--&gt;
&lt;/script&gt;
&lt;noscript&gt;Your browser does not support Javascript!&lt;/noscript&gt;
<b>VBScript Example:</b>
&lt;script type="text/vbscript"&gt;
&lt;!--
document.write("Hello VBScript!")
'--&gt;
&lt;/script&gt;
&lt;noscript&gt;Your browser does not support VBScript!&lt;/noscript&gt;
</pre>
<h2>Default Scripting Language</h2>
<p>There may be a situation when you will include multiple script files and ultimately using multiple &lt;script&gt; tags. You can specify a default scripting language for all your <i>script</i> tags. This saves you from specifying the language everytime you use a script tag within the page. Below is the example: </p>
<pre class="prettyprint notranslate">
&lt;meta http-equiv="Content-Script-Type" content="text/JavaScript" /&gt;
</pre>
<p>Note that you can still override the default by specifying a language within the script tag.</p>

<br/><br/><br/><br/><br/>



<a href="HStylesheet.jsp">Previous</a>
<a href="HLayouts.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>