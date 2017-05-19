<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Tables</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML TABLES</h1>


<p>The HTML tables allow web authors to arrange data like text, images, links, other tables, etc. into rows and columns of cells.</p>
<p>The HTML tables are created using the <b>&lt;table&gt;</b> tag in which the <b>&lt;tr&gt;</b> tag is used to create table rows and <b>&lt;td&gt;</b> tag is used to create data cells.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Tables&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table border="1"&gt;
&lt;tr&gt;
&lt;td&gt;Row 1, Column 1&lt;/td&gt;
&lt;td&gt;Row 1, Column 2&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;Row 2, Column 1&lt;/td&gt;
&lt;td&gt;Row 2, Column 2&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<table border="1" style="border-collapse: separate; border-spacing: 1px;">
<tr>
<td>Row 1, Column 1</td>
<td>Row 1, Column 2</td>
</tr>
<tr>
<td>Row 2, Column 1</td>
<td>Row 2, Column 2</td>
</tr>
</table>
</div>
<p>Here <b>border</b> is an attribute of &lt;table&gt; tag and it is used to put a border across all the cells. If you do not need a border then you can use border="0".</p>
<h2>Table Heading</h2>
<p>Table heading can be defined using <b>&lt;th&gt;</b> tag. This tag will be put to replace &lt;td&gt; tag, which is used to represent actual data cell. Normally you will put your top row as table heading as shown below, otherwise you can use &lt;th&gt; element in any row.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Table Header&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table border="1"&gt;
&lt;tr&gt;
&lt;th&gt;Name&lt;/th&gt;
&lt;th&gt;Salary&lt;/th&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;Ramesh Raman&lt;/td&gt;
&lt;td&gt;5000&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;Shabbir Hussein&lt;/td&gt;
&lt;td&gt;7000&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<table border="1" style="border-collapse: separate; border-spacing: 1px;">
<tr>
<th style="background:#fff;">Name</th>
<th style="background:#fff;">Salary</th>
</tr>
<tr>
<td>Ramesh Raman</td>
<td>5000</td>
</tr>
<tr>
<td>Shabbir Hussein</td>
<td>7000</td>
</tr>
</table>
</div>
<h2>Cellpadding and Cellspacing Attributes</h2>
<p>There are two attribiutes called  <i>cellpadding</i> and <i>cellspacing</i> which you will use to adjust the white space in your table cells. The cellspacing attribute defines the width of the border, while cellpadding represents the distance between cell borders and the content within a cell.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Table Cellpadding&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table border="1" cellpadding="5" cellspacing="5"&gt;
&lt;tr&gt;
&lt;th&gt;Name&lt;/th&gt;
&lt;th&gt;Salary&lt;/th&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;Ramesh Raman&lt;/td&gt;
&lt;td&gt;5000&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;Shabbir Hussein&lt;/td&gt;
&lt;td&gt;7000&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<table border="1" style="padding:5px !important;  border-spacing: 1px;  border-collapse: separate;">
<tr>
<th style="padding:5px;background:#fff;">Name</th>
<th style="padding:5px;background:#fff;">Salary</th>
</tr>
<tr>
<td style="padding:5px;">Ramesh Raman</td>
<td style="padding:5px;">5000</td>
</tr>
<tr>
<td style="padding:5px;">Shabbir Hussein</td>
<td style="padding:5px;">7000</td>
</tr>
</table>
</div>
<h2>Colspan and Rowspan Attributes</h2>
<p>You will use <b>colspan</b> attribute if you want to merge two or more columns into a single column. Similar way you will use <b>rowspan</b> if you want to merge two or more rows.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Table Colspan/Rowspan&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table border="1"&gt;
&lt;tr&gt;
&lt;th&gt;Column 1&lt;/th&gt;
&lt;th&gt;Column 2&lt;/th&gt;
&lt;th&gt;Column 3&lt;/th&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td rowspan="2"&gt;Row 1 Cell 1&lt;/td&gt;&lt;td&gt;Row 1 Cell 2&lt;/td&gt;&lt;td&gt;Row 1 Cell 3&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Row 2 Cell 2&lt;/td&gt;&lt;td&gt;Row 2 Cell 3&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td colspan="3"&gt;Row 3 Cell 1&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<table border="1" style="border-collapse: separate;border-spacing: 1px;">
<tr>
<th style="background:#fff;">Column 1</th>
<th style="background:#fff;">Column 2</th>
<th style="background:#fff;">Column 3</th>
</tr>
<tr><td rowspan="2">Row 1 Cell 1</td>
<td>Row 1 Cell 2</td><td>Row 1 Cell 3</td></tr>
<tr><td>Row 2 Cell 2</td><td>Row 2 Cell 3</td></tr>
<tr><td colspan="3">Row 3 Cell 1</td></tr>
</table>
</div>
<h2>Tables Backgrounds</h2>
<p>You can set table background using one of the following two ways:</p>
<ul class="list">
<li><p><b>bgcolor</b> attribute - You can set background color for whole table or just for one cell.</p></li>
<li><p><b>background</b> attribute - You can set background image for whole table or just for one cell.</p></li>
</ul>
<p>You can also set border color also using <b>bordercolor</b> attribute.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Table Background&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table border="1" bordercolor="green" bgcolor="yellow"&gt;
&lt;tr&gt;
&lt;th&gt;Column 1&lt;/th&gt;
&lt;th&gt;Column 2&lt;/th&gt;
&lt;th&gt;Column 3&lt;/th&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td rowspan="2"&gt;Row 1 Cell 1&lt;/td&gt;&lt;td&gt;Row 1 Cell 2&lt;/td&gt;&lt;td&gt;Row 1 Cell 3&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Row 2 Cell 2&lt;/td&gt;&lt;td&gt;Row 2 Cell 3&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td colspan="3"&gt;Row 3 Cell 1&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<table border="1" bordercolor="green" style="background:yellow !important; border-collapse: separate;border-spacing: 1px;">
<tr>
<th style="background:yellow !important">Column 1</th>
<th style="background:yellow !important">Column 2</th>
<th style="background:yellow !important">Column 3</th>
</tr>
<tr><td rowspan="2">Row 1 Cell 1</td>
<td>Row 1 Cell 2</td><td>Row 1 Cell 3</td></tr>
<tr><td>Row 2 Cell 2</td><td>Row 2 Cell 3</td></tr>
<tr><td colspan="3">Row 3 Cell 1</td></tr>
</table>
</div>
<p>Here is an example of using <b>background</b> attribute. Here we will use an image available in /images directory.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Table Background&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table border="1" bordercolor="green" background="/images/test.png"&gt;
&lt;tr&gt;
&lt;th&gt;Column 1&lt;/th&gt;
&lt;th&gt;Column 2&lt;/th&gt;
&lt;th&gt;Column 3&lt;/th&gt;
&lt;/tr&gt;
&lt;tr&gt;&lt;td rowspan="2"&gt;Row 1 Cell 1&lt;/td&gt;&lt;td&gt;Row 1 Cell 2&lt;/td&gt;&lt;td&gt;Row 1 Cell 3&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Row 2 Cell 2&lt;/td&gt;&lt;td&gt;Row 2 Cell 3&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td colspan="3"&gt;Row 3 Cell 1&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result. Here background image did not apply to table's header.</p>
<div class="result notranslate">
<table border="1" bordercolor="green" background=".\Images\test1.png" style="border-collapse: separate;border-spacing: 1px;">
<tr>
<th style="background:#fff;">Column 1</th>
<th style="background:#fff;">Column 2</th>
<th style="background:#fff;">Column 3</th>
</tr>
<tr><td rowspan="2">Row 1 Cell 1</td>
<td>Row 1 Cell 2</td><td>Row 1 Cell 3</td></tr>
<tr><td>Row 2 Cell 2</td><td>Row 2 Cell 3</td></tr>
<tr><td colspan="3">Row 3 Cell 1</td></tr>
</table>
</div>
<h2>Table Height and Width</h2>
<p>You can set a table width and height using <b>width</b> and <b>height</b> attrubutes. You can specify table width or height in terms of pixels or in terms of percentage of available screen area.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Table Width/Height&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table border="1" width="400" height="150"&gt;
&lt;tr&gt;
&lt;td&gt;Row 1, Column 1&lt;/td&gt;
&lt;td&gt;Row 1, Column 2&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;Row 2, Column 1&lt;/td&gt;
&lt;td&gt;Row 2, Column 2&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<table border="1" width="400" height="150" style="border-collapse: separate;border-spacing: 1px;">
<tr>
<td>Row 1, Column 1</td>
<td>Row 1, Column 2</td>
</tr>
<tr>
<td>Row 2, Column 1</td>
<td>Row 2, Column 2</td>
</tr>
</table>
</div>
<h2>Table Caption</h2>
<p>The <b>caption</b> tag will serve as a title or explanation for the table and it shows up at the top of the table. This tag is deprecated in newer version of HTML/XHTML.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Table Caption&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table border="1" width="100%"&gt;
&lt;caption&gt;This is the caption&lt;/caption&gt;
&lt;tr&gt;
&lt;td&gt;row 1, column 1&lt;/td&gt;&lt;td&gt;row 1, columnn 2&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;row 2, column 1&lt;/td&gt;&lt;td&gt;row 2, columnn 2&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<table border="1" style="border-collapse: separate;border-spacing: 1px;" width="100%">
<caption>This is the caption</caption>
<tr>
<td>row 1, column 1</td><td>row 1, columnn 2</td>
</tr>
<tr>
<td>row 2, column 1</td><td>row 2, columnn 2</td>
</tr>
</table>
</div>
<h2>Table Header, Body, and Footer</h2>
<p>Tables can be divided into three portions: a header, a body, and a foot. The head and foot are rather similar to headers and footers in a word-processed document that remain the same for every page, while the body is the main content holder of the table.</p>
<p>The three elements for separating the head, body, and foot of a table are:</p>
<ul class="list">
<li><b>&lt;thead&gt; - </b>to create a separate table header.</li>
<li><b>&lt;tbody&gt; - </b>to indicate the main body of the table.</li>
<li><b>&lt;tfoot&gt; - </b>to create a separate table footer.</li>
</ul>
<p>A table may contain several &lt;tbody&gt; elements to indicate different <i>pages</i> or groups of data. But it is notable that &lt;thead&gt; and &lt;tfoot&gt; tags should appear before &lt;tbody&gt;</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Table&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table border="1" width="100%"&gt;
&lt;thead&gt;
&lt;tr&gt;
&lt;td colspan="4"&gt;This is the head of the table&lt;/td&gt;
&lt;/tr&gt;
&lt;/thead&gt;
&lt;tfoot&gt;
&lt;tr&gt;
&lt;td colspan="4"&gt;This is the foot of the table&lt;/td&gt;
&lt;/tr&gt;
&lt;/tfoot&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td&gt;Cell 1&lt;/td&gt;
&lt;td&gt;Cell 2&lt;/td&gt;
&lt;td&gt;Cell 3&lt;/td&gt;
&lt;td&gt;Cell 4&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<table border="1" width="100%" style="border-collapse: separate;border-spacing: 1px;">
<thead>
<tr>
<td colspan="4">This is the head of the table</td>
</tr>
</thead>
<tfoot>
<tr>
<td colspan="4">This is the foot of the table</td>
</tr>
</tfoot>
<tbody>
<tr>
<td>Cell 1</td>
<td>Cell 2</td>
<td>Cell 3</td>
<td>Cell 4</td>
</tr>
</tbody>
</table>
</div>
<h2>Nested Tables</h2>
<p>You can use one table inside another table. Not only tables you can use almost all the tags inside table data tag &lt;td&gt;.</p>
<h2>Example</h2>
<p>Following is the example of using another table and other tags inside a table cell.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Table&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table border="1" width="100%"&gt;
&lt;tr&gt;
&lt;td&gt;
   &lt;table border="1" width="100%"&gt;
   &lt;tr&gt;
   &lt;th&gt;Name&lt;/th&gt;
   &lt;th&gt;Salary&lt;/th&gt;
   &lt;/tr&gt;
   &lt;tr&gt;
   &lt;td&gt;Ramesh Raman&lt;/td&gt;
   &lt;td&gt;5000&lt;/td&gt;
   &lt;/tr&gt;
   &lt;tr&gt;
   &lt;td&gt;Shabbir Hussein&lt;/td&gt;
   &lt;td&gt;7000&lt;/td&gt;
   &lt;/tr&gt;
   &lt;/table&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<table border="1" style="border-collapse: separate;border-spacing: 1px; width:100%">
<tr>
   <td>
      <table border="1" style="border-collapse: separate;border-spacing: 1px;width:100%">
      <tr>
         <th style="background:#fff;">Name</th>
         <th style="background:#fff;">Salary</th>
      </tr>
      <tr>
         <td>Ramesh Raman</td>
         <td>5000</td>
      </tr>
      <tr>
         <td>Shabbir Hussein</td>
         <td>7000</td>
      </tr>
      </table>
   </td>
</tr>
</table>
</div>

<br/><br/><br/><br/><br/>



<a href="HImages.jsp">Previous</a>
<a href="HLists.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>