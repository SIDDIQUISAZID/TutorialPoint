<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Colors</title>
</head>
<body>


<header>
eduOnline
</header>

<h1>HTML COLORS</h1>

<p>Fonts play very important role in making a website more user friendly and increasing content readability. Font face and color depends entirely on the computer and browser that is being used to view your page but you can use HTML <b>&lt;font&gt;</b> tag to add style, size, and color to the text on your website. You can use a <b>&lt;basefont&gt;</b> tag to set all of your text to the same size, face, and color.</p>
<p>The font tag is having three attributes called <b>size, color</b>, and <b>face</b> to customize your fonts.  To change any of the font attributes at any time within your webpage, simply use the &lt;font&gt; tag. The text that follows will remain changed until you close with the &lt;/font&gt; tag. You can change one or all of the font attributes within one &lt;font&gt; tag.</p>
<blockquote><b>Note: </b>The font and basefont tags are deprecated and it is supposed to be removed in a future version of HTML. So they should not be used rather, it's suggested to use CSS styles to manipulate your fonts. But still for learning purpose, this chapter will explain font and basefont tags in detail.</blockquote>
<h2>Set Font Size</h2>
<p>You can set content font size using <b>size</b> attribute. The range of accepted values is from 1(smallest) to 7(largest). The default size of a font is 3.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Setting Font Size&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;font size="1"&gt;Font size="1"&lt;/font&gt;&lt;br /&gt;
&lt;font size="2"&gt;Font size="2"&lt;/font&gt;&lt;br /&gt;
&lt;font size="3"&gt;Font size="3"&lt;/font&gt;&lt;br /&gt;
&lt;font size="4"&gt;Font size="4"&lt;/font&gt;&lt;br /&gt;
&lt;font size="5"&gt;Font size="5"&lt;/font&gt;&lt;br /&gt;
&lt;font size="6"&gt;Font size="6"&lt;/font&gt;&lt;br /&gt;
&lt;font size="7"&gt;Font size="7"&lt;/font&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<font size="1">Font size="1"</font><br />
<font size="2">Font size="2"</font><br />
<font size="3">Font size="3"</font><br />
<font size="4">Font size="4"</font><br />
<font size="5">Font size="5"</font><br />
<font size="6">Font size="6"</font><br />
<font size="7">Font size="7"</font>
</div>
<h2>Relative Font Size</h2>
<p>You can specify how many sizes larger or how many sizes smaller than the preset font size should be.  You can specify it like <b>&lt;font size="+n"&gt; or &lt;font size="-n"&gt;</b></p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Relative Font Size&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;font size="-1"&gt;Font size="-1"&lt;/font&gt;&lt;br /&gt;
&lt;font size="+1"&gt;Font size="+1"&lt;/font&gt;&lt;br /&gt;
&lt;font size="+2"&gt;Font size="+2"&lt;/font&gt;&lt;br /&gt;
&lt;font size="+3"&gt;Font size="+3"&lt;/font&gt;&lt;br /&gt;
&lt;font size="+4"&gt;Font size="+4"&lt;/font&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<font size="-1">Font size="-1"</font><br />
<font size="+1">Font size="+1"</font><br />
<font size="+2">Font size="+2"</font><br />
<font size="+3">Font size="+3"</font><br />
<font size="+4">Font size="+4"</font>
</div>
<h2>Setting Font Face</h2>
<p>You can set  font face using <i>face</i> attribute but be aware that if the user viewing the page doesn't have the font installed, they will not be able to see it. Instead user will see the default font face applicable to the user's computer.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Font Face&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;font face="Times New Roman" size="5"&gt;Times New Roman&lt;/font&gt;&lt;br /&gt;
&lt;font face="Verdana" size="5"&gt;Verdana&lt;/font&gt;&lt;br /&gt;
&lt;font face="Comic sans MS" size="5"&gt;Comic Sans MS&lt;/font&gt;&lt;br /&gt;
&lt;font face="WildWest" size="5"&gt;WildWest&lt;/font&gt;&lt;br /&gt;
&lt;font face="Bedrock" size="5"&gt;Bedrock&lt;/font&gt;&lt;br /&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<font face="Times New Roman" size="5">Times New Roman</font><br />
<font face="Verdana" size="5">Verdana</font><br />
<font face="Comic sans MS" size="5">Comic Sans MS</font><br />
<font face="WildWest" size="5">WildWest</font><br />
<font face="Bedrock" size="5">Bedrock</font>
</div>
<h2>Specify alternate font faces</h2>
<p>A visitor will only be able to see your font if they have that font installed on their computer. So, it is possible to specify two or more font face alternatives by listing the font face names, separated by a comma. </p>
<pre class="prettyprint notranslate">
&lt;font face="arial,helvetica"&gt;
&lt;font face="Lucida Calligraphy,Comic Sans MS,Lucida Console"&gt;
</pre>
<p>When your page is loaded, their browser will display the first font face available. If none of  the given fonts are installed, then it will display the default font face <i>Times New Roman</i>.</p>
<p><b>Note: </b>Check a complete list of <a href="/html/html_fonts_ref.htm"><b>HTML Standard Fonts</b></a>.</p>
<h2>Setting Font Color</h2>
<p>You can set any font color you like using <i>color</i> attribute. You can specify the color that you want by either the color name or hexadecimal code for that color.</p>

<p><b>Note: </b>You can check a complete list of <a href="/html/html_color_names.htm"><b>HTML Color Name with Codes</b></a>.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Setting Font Color&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;font color="#FF00FF"&gt;This text is in pink&lt;/font&gt;&lt;br /&gt;
&lt;font color="red"&gt;This text is red&lt;/font&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<font color="#FF00FF">This text is in pink</font><br />
<font color="red">This text is red</font>
</div>
<h2>The &lt;basefont&gt; Element:</h2>
<p>The &lt;basefont&gt; element is supposed to set a default font size, color, and typeface for any parts of the document that are not otherwise contained within a &lt;font&gt; tag. You can  use the &lt;font&gt; elements to override the &lt;basefont&gt; settings.</p>
<p>The &lt;basefont&gt; tag also takes color, size and face attributes and it will support relative font setting  by giving size a value of +1 for a size larger or -2 for two sizes smaller.</p>

<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Setting Basefont Color&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;basefont face="arial, verdana, sans-serif" size="2" color="#ff0000"&gt;
&lt;p&gt;This is the page's default font.&lt;/p&gt;

&lt;h2&gt;Example of the &amp;lt;basefont&amp;gt; Element&lt;/h2&gt;
&lt;p&gt;&lt;font size="+2" color="darkgray"&gt;
This is darkgray text with two sizes larger
&lt;/font&gt;&lt;/p&gt;

&lt;p&gt;&lt;font face="courier" size="-1" color="#000000"&gt;
It is a courier font, a size smaller and black in color.
&lt;/font&gt;&lt;/p&gt;

&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<basefont face="arial, verdana, sans-serif" size="2" color="#ff0000">
<p>This is the page's default font.</p>

<h2>Example of the &lt;basefont&gt; Element</h2>
<p><font size="+2" color="darkgray">
This is darkgray text with two sizes larger
</font></p>

<p><font face="courier" size="-1" color="#000000">
It is a courier font, a size smaller and black in color.
</font></p>
</div>

<br/><br/><br/><br/><br/>



<a href="HColors.jsp">Previous</a>
<a href="HForms.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>