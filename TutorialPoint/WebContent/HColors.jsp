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


<p>Colors are very important to give a good look and feel to your website. You can specify colors on page level using &lt;body&gt; tag or you can set colors for individual tags using <b>bgcolor</b> attribute.</p>
<p>The &lt;body&gt; tag has following attributes which can be used to set different colors:</p>
<ul>
<li><b>bgcolor -</b> sets a color for the background of the page.</li><br/>
<li><b>text -</b> sets a color for the body text.</li><br/>
<li><b>alink -</b> sets a color for active links or selected links.</li><br/>
<li><b>link -</b> sets a color for linked text.</li><br/>
<li><b>vlink -</b> sets a color for <i>visited links</i> - that is, for linked text that you have already clicked on.</li><br/>
</ul>
<h2>HTML Color Coding Methods</h2>
<p>There are following three different methods to set colors in your web page:</p>
<ul>
<li><b>Color names -</b> You can specify color names directly like green, blue or red.</li> <br/>
<li><b>Hex codes -</b> A six-digit code representing the amount of red, green, and blue that makes up the color.</li><br/>
<li><b>Color decimal or percentage values -</b> This value is specified using the rgb( ) property.</li><br/>
</ul>
<p>Now we will see these coloring schemes one by one.</p>
<h2>HTML Colors - Color Names</h2>
<p>You can sepecify direct a color name  to set text or background color. W3C has listed 16 basic color names that will validate with an HTML validator but there are over 200 different color names supported by major browsers.</p>


<h3>W3C Standard 16 Colors</h3>
<p>Here is the list of W3C Standard 16 Colors names and it is recommended to use them.</p>
<table class="src">
<tr><td bgcolor="black" width="20"></td><td width="50">Black</td> <td bgcolor="gray" width="20"></td><td width="50">Gray</td>   <td bgcolor="silver" width="20"></td><td width="50">Silver</td> <td bgcolor="white" width="20"></td><td width="50">White</td></tr>
<tr><td bgcolor="yellow" width="20"></td><td width="50">Yellow</td> <td bgcolor="lime" width="20"></td><td width="50">Lime</td>   <td bgcolor="aqua" width="20"></td><td width="50">Aqua</td>     <td bgcolor="fuchsia" width="20"></td><td width="50">Fuchsia</td></tr>
<tr><td bgcolor="red" width="20"></td><td width="50">Red</td>       <td bgcolor="green" width="20"></td><td width="50">Green</td> <td bgcolor="blue" width="20"></td><td width="50">Blue</td>     <td bgcolor="purple" width="20"></td><td width="50">Purple</td></tr>
<tr><td bgcolor="maroon" width="20"></td><td width="50">Maroon</td> <td bgcolor="olive" width="20"></td><td width="50">Olive</td> <td bgcolor="navy" width="20"></td><td width="50">Navy</td>     <td bgcolor="teal" width="20"></td><td width="50">Teal</td></tr>
</table>
<h4>Example</h4>
<p>Here are the examples to set background of an HTML tag by color name:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Colors by Name&lt;/title&gt;
&lt;/head&gt;
&lt;body text="blue" bgcolor="green"&gt;
&lt;p&gt;Use different color names for for body and table and see the result.&lt;/p&gt;
&lt;table bgcolor="black"&gt;
&lt;tr&gt;
&lt;td&gt;
&lt;font color="white"&gt;This text will appear white on black background.&lt;/font&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<h3>HTML Colors - Hex Codes</h3>
<p>A hexadecimal is a 6 digit representation of a color. The first two digits(RR) represent a red value, the next two are a green value(GG), and the last are the blue value(BB).</p>
<p>A hexadecimal value can be taken from any graphics software like Adobe Photoshop, Paintshop Pro or MS Paint.</p>
<p>Each hexadecimal code will be preceded by a pound or hash sign #. Following is a list of few colors using hexadecimal notation.</p>
<table class="src">
<tr><th width="50%">Color</th><th width="50%">Color HEX</th></tr>
<tr><td bgcolor="#000000">&nbsp;</td><td>#000000</td> </tr>
<tr><td bgcolor="#ff0000">&nbsp;</td><td>#FF0000</td></tr>
<tr><td bgcolor="#00ff00">&nbsp;</td><td>#00FF00</td></tr>
<tr><td bgcolor="#0000ff">&nbsp;</td><td>#0000FF</td></tr>
<tr><td bgcolor="#ffff00">&nbsp;</td><td>#FFFF00</td></tr>
<tr><td bgcolor="#00ffff">&nbsp;</td><td>#00FFFF</td></tr>
<tr><td bgcolor="#ff00ff">&nbsp;</td><td>#FF00FF</td></tr>
<tr><td bgcolor="#c0c0c0">&nbsp;</td><td>#C0C0C0</td></tr>
<tr><td bgcolor="#ffffff">&nbsp;</td><td>#FFFFFF</td></tr>
</table>
<h4>Example</h4>
<p>Here are the examples to set background of an HTML tag by color code in hexadecimal:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Colors by Hex&lt;/title&gt;
&lt;/head&gt;
&lt;body text="#0000FF" bgcolor="#00FF00"&gt;
&lt;p&gt;Use different color hexa for for body and table and see the result.&lt;/p&gt;
&lt;table bgcolor="#000000"&gt;
&lt;tr&gt;
&lt;td&gt;
&lt;font color="#FFFFFF"&gt;This text will appear white on black background.&lt;/font&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<h2>HTML Colors - RGB Values</h2>
<p>This color value is specified using the <b>rgb( )</b> property. This property takes three values, one each for red, green, and blue. The value can be an integer between 0 and 255 or a percentage.</p>
<blockquote><b>Note: </b>All the browsers does not support rgb() property of color so it is recommended not to use it.</blockquote>
<p>Following is a list to show few colors using RGB values.</p>
<table class="src">
<tr><th width="50%">Color</th><th width="50%">Color RGB</th></tr>
<tr><td bgcolor="#000000">&nbsp;</td><td>rgb(0,0,0)</td> </tr>
<tr><td bgcolor="#ff0000">&nbsp;</td><td>rgb(255,0,0)</td></tr>
<tr><td bgcolor="#00ff00">&nbsp;</td><td>rgb(0,255,0)</td></tr>
<tr><td bgcolor="#0000ff">&nbsp;</td><td>rgb(0,0,255)</td></tr>
<tr><td bgcolor="#ffff00">&nbsp;</td><td>rgb(255,255,0)</td></tr>
<tr><td bgcolor="#00ffff">&nbsp;</td><td>rgb(0,255,255)</td></tr>
<tr><td bgcolor="#ff00ff">&nbsp;</td><td>rgb(255,0,255)</td></tr>
<tr><td bgcolor="#c0c0c0">&nbsp;</td><td>rgb(192,192,192)</td></tr>
<tr><td bgcolor="#ffffff">&nbsp;</td><td>rgb(255,255,255)</td></tr>
</table>
<h4>Example</h4>
<p>Here are the examples to set background of an HTML tag by color code using rgb() values:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Colors by RGB code&lt;/title&gt;
&lt;/head&gt;
&lt;body text="rgb(0,0,255)" bgcolor="rgb(0,255,0)"&gt;
&lt;p&gt;Use different color code for for body and table and see the result.&lt;/p&gt;
&lt;table bgcolor="rgb(0,0,0)"&gt;
&lt;tr&gt;
&lt;td&gt;
&lt;font color="rgb(255,255,255)"&gt;This text will appear white on black background.&lt;/font&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<h2>Browser Safe Colors</h2>
<p>Here is the list of 216 colors which are supposed to be safest and computer independent colors. These colors very from hexa code 000000 to FFFFFF and they will be supported by all the computers having 256 color palette.</p>
<table class="src">
<tr>
<td style="color: white;"  bgcolor="#000000">000000</td>
<td style="color: white;"  bgcolor="#000033">000033</td>
<td style="color: white;"  bgcolor="#000066">000066</td>
<td style="color: white;"  bgcolor="#000099">000099</td>
<td style="color: white;"  bgcolor="#0000cc">0000CC</td>
<td style="color: white;"  bgcolor="#0000ff">0000FF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#003300">003300</td>
<td style="color: white;"  bgcolor="#003333">003333</td>
<td style="color: white;"  bgcolor="#003366">003366</td>
<td style="color: white;"  bgcolor="#003399">003399</td>
<td style="color: white;"  bgcolor="#0033cc">0033CC</td>
<td style="color: white;"  bgcolor="#0033ff">0033FF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#006600">006600</td>
<td style="color: white;"  bgcolor="#006633">006633</td>
<td style="color: white;"  bgcolor="#006666">006666</td>
<td style="color: white;"  bgcolor="#006699">006699</td>
<td style="color: white;"  bgcolor="#0066cc">0066CC</td>
<td style="color: white;"  bgcolor="#0066ff">0066FF</td>
</tr>
<tr>
<td  bgcolor="#009900">009900</td>
<td  bgcolor="#009933">009933</td>
<td  bgcolor="#009966">009966</td>
<td  bgcolor="#009999">009999</td>
<td  bgcolor="#0099cc">0099CC</td>
<td  bgcolor="#0099ff">0099FF</td>
</tr>
<tr>
<td  bgcolor="#00cc00">00CC00</td>
<td  bgcolor="#00cc33">00CC33</td>
<td  bgcolor="#00cc66">00CC66</td>
<td  bgcolor="#00cc99">00CC99</td>
<td  bgcolor="#00cccc">00CCCC</td>
<td  bgcolor="#00ccff">00CCFF</td>
</tr>
<tr>
<td  bgcolor="#00ff00">00FF00</td>
<td  bgcolor="#00ff33">00FF33</td>
<td  bgcolor="#00ff66">00FF66</td>
<td  bgcolor="#00ff99">00FF99</td>
<td  bgcolor="#00ffcc">00FFCC</td>
<td  bgcolor="#00ffff">00FFFF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#330000">330000</td>
<td style="color: white;"  bgcolor="#330033">330033</td>
<td style="color: white;"  bgcolor="#330066">330066</td>
<td style="color: white;"  bgcolor="#330099">330099</td>
<td style="color: white;"  bgcolor="#3300cc">3300CC</td>
<td style="color: white;"  bgcolor="#3300ff">3300FF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#333300">333300</td>
<td style="color: white;"  bgcolor="#333333">333333</td>
<td style="color: white;"  bgcolor="#333366">333366</td>
<td style="color: white;"  bgcolor="#333399">333399</td>
<td style="color: white;"  bgcolor="#3333cc">3333CC</td>
<td style="color: white;"  bgcolor="#3333ff">3333FF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#336600">336600</td>
<td style="color: white;"  bgcolor="#336633">336633</td>
<td style="color: white;"  bgcolor="#336666">336666</td>
<td style="color: white;"  bgcolor="#336699">336699</td>
<td style="color: white;"  bgcolor="#3366cc">3366CC</td>
<td style="color: white;"  bgcolor="#3366ff">3366FF</td>
</tr>
<tr>
<td  bgcolor="#339900">339900</td>
<td  bgcolor="#339933">339933</td>
<td  bgcolor="#339966">339966</td>
<td  bgcolor="#339999">339999</td>
<td  bgcolor="#3399cc">3399CC</td>
<td  bgcolor="#3399ff">3399FF</td>
</tr>
<tr>
<td  bgcolor="#33cc00">33CC00</td>
<td  bgcolor="#33cc33">33CC33</td>
<td  bgcolor="#33cc66">33CC66</td>
<td  bgcolor="#33cc99">33CC99</td>
<td  bgcolor="#33cccc">33CCCC</td>
<td  bgcolor="#33ccff">33CCFF</td>
</tr>
<tr>
<td  bgcolor="#33ff00">33FF00</td>
<td  bgcolor="#33ff33">33FF33</td>
<td  bgcolor="#33ff66">33FF66</td>
<td  bgcolor="#33ff99">33FF99</td>
<td  bgcolor="#33ffcc">33FFCC</td>
<td  bgcolor="#33ffff">33FFFF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#660000">660000</td>
<td style="color: white;"  bgcolor="#660033">660033</td>
<td style="color: white;"  bgcolor="#660066">660066</td>
<td style="color: white;"  bgcolor="#660099">660099</td>
<td style="color: white;"  bgcolor="#6600cc">6600CC</td>
<td style="color: white;"  bgcolor="#6600ff">6600FF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#663300">663300</td>
<td style="color: white;"  bgcolor="#663333">663333</td>
<td style="color: white;"  bgcolor="#663366">663366</td>
<td style="color: white;"  bgcolor="#663399">663399</td>
<td style="color: white;"  bgcolor="#6633cc">6633CC</td>
<td style="color: white;"  bgcolor="#6633ff">6633FF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#666600">666600</td>
<td style="color: white;"  bgcolor="#666633">666633</td>
<td style="color: white;"  bgcolor="#666666">666666</td>
<td style="color: white;"  bgcolor="#666699">666699</td>
<td style="color: white;"  bgcolor="#6666cc">6666CC</td>
<td style="color: white;"  bgcolor="#6666ff">6666FF</td>
</tr>
<tr>
<td  bgcolor="#669900">669900</td>
<td  bgcolor="#669933">669933</td>
<td  bgcolor="#669966">669966</td>
<td  bgcolor="#669999">669999</td>
<td  bgcolor="#6699cc">6699CC</td>
<td  bgcolor="#6699ff">6699FF</td>
</tr>
<tr>
<td  bgcolor="#66cc00">66CC00</td>
<td  bgcolor="#66cc33">66CC33</td>
<td  bgcolor="#66cc66">66CC66</td>
<td  bgcolor="#66cc99">66CC99</td>
<td  bgcolor="#66cccc">66CCCC</td>
<td  bgcolor="#66ccff">66CCFF</td>
</tr>
<tr>
<td  bgcolor="#66ff00">66FF00</td>
<td  bgcolor="#66ff33">66FF33</td>
<td  bgcolor="#66ff66">66FF66</td>
<td  bgcolor="#66ff99">66FF99</td>
<td  bgcolor="#66ffcc">66FFCC</td>
<td  bgcolor="#66ffff">66FFFF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#990000">990000</td>
<td style="color: white;"  bgcolor="#990033">990033</td>
<td style="color: white;"  bgcolor="#990066">990066</td>
<td style="color: white;"  bgcolor="#990099">990099</td>
<td style="color: white;"  bgcolor="#9900cc">9900CC</td>
<td style="color: white;"  bgcolor="#9900ff">9900FF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#993300">993300</td>
<td style="color: white;"  bgcolor="#993333">993333</td>
<td style="color: white;"  bgcolor="#993366">993366</td>
<td style="color: white;"  bgcolor="#993399">993399</td>
<td style="color: white;"  bgcolor="#9933cc">9933CC</td>
<td style="color: white;"  bgcolor="#9933ff">9933FF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#996600">996600</td>
<td style="color: white;"  bgcolor="#996633">996633</td>
<td style="color: white;"  bgcolor="#996666">996666</td>
<td style="color: white;"  bgcolor="#996699">996699</td>
<td style="color: white;"  bgcolor="#9966cc">9966CC</td>
<td style="color: white;"  bgcolor="#9966ff">9966FF</td>
</tr>
<tr>
<td  bgcolor="#999900">999900</td>
<td  bgcolor="#999933">999933</td>
<td  bgcolor="#999966">999966</td>
<td  bgcolor="#999999">999999</td>
<td  bgcolor="#9999cc">9999CC</td>
<td  bgcolor="#9999ff">9999FF</td>
</tr>
<tr>
<td  bgcolor="#99cc00">99CC00</td>
<td  bgcolor="#99cc33">99CC33</td>
<td  bgcolor="#99cc66">99CC66</td>
<td  bgcolor="#99cc99">99CC99</td>
<td  bgcolor="#99cccc">99CCCC</td>
<td  bgcolor="#99ccff">99CCFF</td>
</tr>
<tr>
<td  bgcolor="#99ff00">99FF00</td>
<td  bgcolor="#99ff33">99FF33</td>
<td  bgcolor="#99ff66">99FF66</td>
<td  bgcolor="#99ff99">99FF99</td>
<td  bgcolor="#99ffcc">99FFCC</td>
<td  bgcolor="#99ffff">99FFFF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#cc0000">CC0000</td>
<td style="color: white;"  bgcolor="#cc0033">CC0033</td>
<td style="color: white;"  bgcolor="#cc0066">CC0066</td>
<td style="color: white;"  bgcolor="#cc0099">CC0099</td>
<td style="color: white;"  bgcolor="#cc00cc">CC00CC</td>
<td style="color: white;"  bgcolor="#cc00ff">CC00FF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#cc3300">CC3300</td>
<td style="color: white;"  bgcolor="#cc3333">CC3333</td>
<td style="color: white;"  bgcolor="#cc3366">CC3366</td>
<td style="color: white;"  bgcolor="#cc3399">CC3399</td>
<td style="color: white;"  bgcolor="#cc33cc">CC33CC</td>
<td style="color: white;"  bgcolor="#cc33ff">CC33FF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#cc6600">CC6600</td>
<td style="color: white;"  bgcolor="#cc6633">CC6633</td>
<td style="color: white;"  bgcolor="#cc6666">CC6666</td>
<td style="color: white;"  bgcolor="#cc6699">CC6699</td>
<td style="color: white;"  bgcolor="#cc66cc">CC66CC</td>
<td style="color: white;"  bgcolor="#cc66ff">CC66FF</td>
</tr>
<tr>
<td  bgcolor="#cc9900">CC9900</td>
<td  bgcolor="#cc9933">CC9933</td>
<td  bgcolor="#cc9966">CC9966</td>
<td  bgcolor="#cc9999">CC9999</td>
<td  bgcolor="#cc99cc">CC99CC</td>
<td  bgcolor="#cc99ff">CC99FF</td>
</tr>
<tr>
<td  bgcolor="#cccc00">CCCC00</td>
<td  bgcolor="#cccc33">CCCC33</td>
<td  bgcolor="#cccc66">CCCC66</td>
<td  bgcolor="#cccc99">CCCC99</td>
<td  bgcolor="#cccccc">CCCCCC</td>
<td  bgcolor="#ccccff">CCCCFF</td>
</tr>
<tr>
<td  bgcolor="#ccff00">CCFF00</td>
<td  bgcolor="#ccff33">CCFF33</td>
<td  bgcolor="#ccff66">CCFF66</td>
<td  bgcolor="#ccff99">CCFF99</td>
<td  bgcolor="#ccffcc">CCFFCC</td>
<td  bgcolor="#ccffff">CCFFFF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#ff0000">FF0000</td>
<td style="color: white;"  bgcolor="#ff0033">FF0033</td>
<td style="color: white;"  bgcolor="#ff0066">FF0066</td>
<td style="color: white;"  bgcolor="#ff0099">FF0099</td>
<td style="color: white;"  bgcolor="#ff00cc">FF00CC</td>
<td style="color: white;"  bgcolor="#ff00ff">FF00FF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#ff3300">FF3300</td>
<td style="color: white;"  bgcolor="#ff3333">FF3333</td>
<td style="color: white;"  bgcolor="#ff3366">FF3366</td>
<td style="color: white;"  bgcolor="#ff3399">FF3399</td>
<td style="color: white;"  bgcolor="#ff33cc">FF33CC</td>
<td style="color: white;"  bgcolor="#ff33ff">FF33FF</td>
</tr>
<tr>
<td style="color: white;"  bgcolor="#ff6600">FF6600</td>
<td style="color: white;"  bgcolor="#ff6633">FF6633</td>
<td style="color: white;"  bgcolor="#ff6666">FF6666</td>
<td style="color: white;"  bgcolor="#ff6699">FF6699</td>
<td style="color: white;"  bgcolor="#ff66cc">FF66CC</td>
<td style="color: white;"  bgcolor="#ff66ff">FF66FF</td>
</tr>
<tr>
<td  bgcolor="#ff9900">FF9900</td>
<td  bgcolor="#ff9933">FF9933</td>
<td  bgcolor="#ff9966">FF9966</td>
<td  bgcolor="#ff9999">FF9999</td>
<td  bgcolor="#ff99cc">FF99CC</td>
<td  bgcolor="#ff99ff">FF99FF</td>
</tr>
<tr>
<td  bgcolor="#ffcc00">FFCC00</td>
<td  bgcolor="#ffcc33">FFCC33</td>
<td  bgcolor="#ffcc66">FFCC66</td>
<td  bgcolor="#ffcc99">FFCC99</td>
<td  bgcolor="#ffcccc">FFCCCC</td>
<td  bgcolor="#ffccff">FFCCFF</td>
</tr>
<tr>
<td  bgcolor="#ffff00">FFFF00</td>
<td  bgcolor="#ffff33">FFFF33</td>
<td  bgcolor="#ffff66">FFFF66</td>
<td  bgcolor="#ffff99">FFFF99</td>
<td  bgcolor="#ffffcc">FFFFCC</td>
<td  bgcolor="#ffffff">FFFFFF</td>
</tr>
</table>


<br/><br/><br/><br/><br/>



<a href="HBackgrounds.jsp">Previous</a>
<a href="HFonts.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>