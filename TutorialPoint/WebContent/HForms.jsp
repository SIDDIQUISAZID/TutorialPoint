<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Forms</title>
</head>
<body>


<header>
eduOnline
</header>

<h1>HTML FORMS</h1>

<p>HTML Forms are required when you want to collect some data from the site visitor. For example during user registration you would like to collect information such as name, email address, credit card, etc.</p>
<p>A form will take input from the site visitor and then will post it to a back-end application such as CGI, ASP Script or PHP script etc. The back-end application will perform required processing on the passed data based on defined business logic inside the application.</p>
<p>There are various form elements available like text fields, textarea fields, drop-down menus, radio buttons, checkboxes, etc.</p>
<p>The HTML <b>&lt;form&gt;</b> tag is used to create an HTML form and it has following syntax:</p>
<pre class="prettyprint notranslate">
&lt;form action="Script URL" method="GET|POST"&gt;
    form elements like input, textarea etc.
&lt;/form&gt;
</pre>
<h2>Form Attributes</h2>
<p>Apart from common attributes, following is a list of the most frequently used form attributes:</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>action<td>Backend script ready to process your passed data.</td></tr>
<tr><td>method<td>Method to be used to upload data. The most frequently used are GET and POST methods.</td></tr>
<tr><td>target<td>Specify the target window or frame where the result of the script will be displayed. It takes values like _blank, _self, _parent etc.</td></tr>
<tr><td>enctype<td><p>You can use the enctype attribute to specify how the browser encodes the data before it sends it to the server. Possible values are:</p>
	<ul class="list">
	<li><p><b>application/x-www-form-urlencoded</b> - This is the standard method most forms use in simple scenarios.</p></li>
	<li><p><b>mutlipart/form-data</b> - This is used when you want to upload binary data in the form of files like image, word file etc.</p></li>
	</ul>
</td></tr>
</table>
<p><b>Note: </b>You can refer to <a href="/perl/perl_cgi_programming.htm"><b>Perl &amp; CGI</b></a> for a detail on how form data upload works.</p>
<h2>HTML Form Controls</h2>
<p>There are different types of form controls that you can use to collect data using HTML form:</p>
<ul class="list">
<li><p>Text Input Controls</p></li>
<li><p>Checkboxes Controls</p></li>
<li><p>Radio Box Controls</p></li>
<li><p>Select Box Controls</p></li>
<li><p>File Select boxes</p></li>
<li><p>Hidden Controls</p></li>
<li><p>Clickable Buttons</p></li>
<li><p>Submit and Reset Button</p></li>
</ul>
<h2>Text Input Controls</h2>
<p>There are three types of text input used on forms:</p>
<ul class="list">
<li><p><b>Single-line text input controls -</b> This control is used for items that require only one line of user input, such as search boxes or names. They are created using HTML <b>&lt;input&gt;</b> tag.</p></li>
<li><p><b>Password input controls -</b> This is also a single-line text input but it masks the character as soon as a user enters it. They are also created using HTMl &lt;input&gt; tag.</p></li>
<li><p><b>Multi-line text input controls -</b> This is used when the user is required to give details that may be longer than a single sentence. Multi-line input controls are created using HTML <b>&lt;textarea&gt;</b> tag.</p></li>
</ul>
<h2>Single-line text input controls</h2>
<p>This control is used for items that require only one line of user input, such as search boxes or names. They are created using HTML &lt;input&gt; tag.</p>
<h3>Example</h3>
<p>Here is a basic example of a single-line text input used to take first name and last name:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Text Input Control&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form &gt;
First name:  &lt;input type="text" name="first_name" /&gt;
&lt;br&gt;
Last name:  &lt;input type="text" name="last_name" /&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<form>
First name:  <input type="text" name="first_name" />
<br />
Last name:  <input type="text" name="last_name" />
</form>
</div>
<h3>Attributes</h3>
<p>Following is the list of attributes for &lt;input&gt; tag for creating text field.</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>type<td>Indicates the type of input control and for text input control it will be set to <b>text</b>.</td></tr>
<tr><td>name<td>Used to give a name to the control which is sent to the server to be recognized and get the value.</td></tr>
<tr><td>value<td>This can be used to provide an initial value inside the control.</td></tr>
<tr><td>size<td>Allows to specify the width of the text-input control in terms of characters.</td></tr>
<tr><td>maxlength<td>Allows to specify the maximum number of characters a user can enter into the text box.</td></tr>
</table>
<h2>Password input controls</h2>
<p>This is also a single-line text input but it masks the character as soon as a user enters it. They are also created using HTML &lt;input&gt; tag but type attribute is set to <b>password</b>.</p>
<h3>Example</h3>
<p>Here is a basic example of a single-line password input used to take user password:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Password Input Control&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form &gt;
User ID :  &lt;input type="text" name="user_id" /&gt;
&lt;br&gt;
Password:  &lt;input type="password" name="password" /&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<form>
User ID :  &nbsp; <input type="text" name="user_id" />
<br />
Password:   <input type="password" name="user_id" />
</form>
</div>
<h3>Attributes</h3>
<p>Following is the list of attributes for &lt;input&gt; tag for creating password field.</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>type<td>Indicates the type of input control and for password input control it will be set to <b>password</b>.</td></tr>
<tr><td>name<td>Used to give a name to the control which is sent to the server to be recognized and get the value.</td></tr>
<tr><td>value<td>This can be used to provide an initial value inside the control.</td></tr>
<tr><td>size<td>Allows to specify the width of the text-input control in terms of characters.</td></tr>
<tr><td>maxlength<td>Allows to specify the maximum number of characters a user can enter into the text box.</td></tr>
</table>
<h2>Multiple-Line Text Input Controls</h2>
<p>This is used when the user is required to give details that may be longer than a single sentence. Multi-line input controls are created using HTML &lt;textarea&gt; tag.</p>
<h3>Example</h3>
<p>Here is a basic example of a multi-line text input used to take item description:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Multiple-Line Input Control&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form&gt;
Description : &lt;br /&gt;
&lt;textarea rows="5" cols="50" name="description"&gt;
Enter description here...
&lt;/textarea&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<form>
Description : <br />
<textarea rows="5" cols="67" name="description">
Enter description here...
</textarea>
</form>
</div>
<h3>Attributes</h3>
<p>Following is the list of attributes for &lt;textarea&gt; tag.</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>name<td>Used to give a name to the control which is sent to the server to be recognized and get the value.</td></tr>
<tr><td>rows<td>Indicates the number of rows of text area box.</td></tr>
<tr><td>cols<td>Indicates the number of columns of text area box</td></tr>
</table>

<h2>Checkbox Control</h2>
<p>Checkboxes are used when more than one option is required to be selected. They are also created using HTML &lt;input&gt; tag but type attribute is set to <b>checkbox</b>.</p>
<h3>Example</h3>
<p>Here is an example HTML code for a form with two checkboxes:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Checkbox Control&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form&gt;
&lt;input type="checkbox" name="maths" value="on"&gt; Maths
&lt;input type="checkbox" name="physics" value="on"&gt; Physics
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<form>
<input type="checkbox" name="maths" value="on"> Maths
<input type="checkbox" name="physics" value="on"> Physics
</form>
</div>
<h3>Attributes</h3>
<p>Following is the list of attributes for &lt;checkbox&gt; tag.</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>type<td>Indicates the type of input control and for checkbox input control it will be set to <b>checkbox</b>.</td></tr>
<tr><td>name<td>Used to give a name to the control which is sent to the server to be recognized and get the value.</td></tr>
<tr><td>value<td>The value that will be used if the checkbox is selected.</td></tr>
<tr><td>checked<td>Set to <i>checked</i> if you want to select it by default.</td></tr>
</table>

<h2>Radio Button Control</h2>
<p>Radio buttons are used when out of many options, just one option is required to be selected. They are also created using HTML &lt;input&gt; tag but type attribute is set to <b>radio</b>.</p>
<h3>Example</h3>
<p>Here is example HTML code for a form with two radio buttons:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Radio Box Control&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form&gt;
&lt;input type="radio" name="subject" value="maths"&gt; Maths
&lt;input type="radio" name="subject" value="physics"&gt; Physics
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<form>
<input type="radio" name="subject" value="maths"> Maths
<input type="radio" name="subject" value="physics"> Physics
</form>
</div>
<h3>Attributes</h3>
<p>Following is the list of attributes for radio button.</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>type<td>Indicates the type of input control and for checkbox input control it will be set to <b>radio</b>.</td></tr>
<tr><td>name<td>Used to give a name to the control which is sent to the server to be recognized and get the value.</td></tr>
<tr><td>value<td>The value that will be used if the radio box is selected.</td></tr>
<tr><td>checked<td>Set to <i>checked</i> if you want to select it by default.</td></tr>
</table>

<h2>Select Box Control</h2>
<p>A select box, also called drop down box which provides option to list down various options in the form of drop down list, from where a user can select one or more options.</p>
<h3>Example</h3>
<p>Here is example HTML code for a form with one drop down box</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Select Box Control&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form&gt;
&lt;select name="dropdown"&gt;
&lt;option value="Maths" selected&gt;Maths&lt;/option&gt;
&lt;option value="Physics"&gt;Physics&lt;/option&gt;
&lt;/select&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<form>
<select name="dropdown">
<option value="Maths" selected>Maths</option>
<option value="Physics">Physics</option>
</select>
</form>
</div>
<h3>Attributes</h3>
<p>Following is the list of important attributes of &lt;select&gt; tag:</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>name<td>Used to give a name to the control which is sent to the server to be recognized and get the value.</td></tr>
<tr><td>size<td>This can be used to present a scrolling list box.</td></tr>
<tr><td>multiple<td>If set to "multiple" then allows a user to select multiple items from the menu.</td></tr>
</table>
<p>Following is the list of important attributes of &lt;option&gt; tag:</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>value<td>The value that will be used if an option in the select box box is selected.</td></tr>
<tr><td>selected<td>Specifies that this option should be the initially selected value when the page loads.</td></tr>
<tr><td>label<td>An alternative way of labeling options</td></tr>
</table>
<h2>File Upload Box</h2>
<p>If you want to allow a user to upload a file to your web site, you will need to use a file upload box, also known as a file select box. This is also created using the &lt;input&gt; element but type attribute is set to <b>file</b>.</p>
<h3>Example</h3>
<p>Here is example HTML code for a form with one file upload box:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;File Upload Box&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form&gt;
&lt;input type="file" name="fileupload" accept="image/*" /&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<form>
<input type="file" name="fileupload" accept="image/*" />
</form>
</div>
<h3>Attributes</h3>
<p>Following is the list of important attributes of  file upload box:</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>name<td>Used to give a name to the control which is sent to the server to be recognized and get the value.</td></tr>
<tr><td>accept<td>Specifies the types of files that the server accepts.</td></tr>
</table>

<h2>Button Controls</h2>
<p>There are various ways in HTML to create clickable buttons. You can also create a clickable button using &lt;input&gt; tag by setting its type attribute to <b>button</b>. The type attribute can take the following values:</p>
<table class="table table-bordered">
<tr><th>Type</th><th>Description</th></tr>
<tr><td>submit<td>This creates a button that automatically submits a form.</td></tr>
<tr><td>reset<td>This creates a button that automatically resets form controls to their initial values.</td></tr>
<tr><td>button<td>This creates a button that is used to trigger a client-side script when the user clicks that button.</td></tr>
<tr><td>image<td>This creates a clickable button but we can use an image as background of the button.</td></tr>
</table>
<h3>Example</h3>
<p>Here is example HTML code for a form with three types of buttons:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;File Upload Box&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form&gt;
&lt;input type="submit" name="submit" value="Submit" /&gt;
&lt;input type="reset" name="reset"  value="Reset" /&gt;
&lt;input type="button" name="ok" value="OK"  /&gt;
&lt;input type="image" name="imagebutton" src="/html/images/logo.png" /&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<form>
<input type="submit" name="submit" value="Submit" />
<input type="reset" name="reset"  value="Reset" />
<input type="button" name="ok" value="OK"  />
<input type="image" name="imagebutton" src=".\Images\test1.png" />
</form>
</div>
<h2>Hidden Form Controls</h2>
<p>Hidden form controls are used to hide data inside the page which later on can be pushed to the server. This control hides inside the code and does not appear on the actual page. For example, following hidden form is being used to keep current page number. When a user will click next page then the value of hidden control will be sent to the web server and there it will decide which page has be displayed next based on the passed current page.</p>
<h3>Example</h3>
<p>Here is example HTML code to show the usage of hidden control:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;File Upload Box&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form&gt;
&lt;p&gt;This is page 10&lt;/p&gt;
&lt;input type="hidden" name="pagename" value="10" /&gt;
&lt;input type="submit" name="submit" value="Submit" /&gt;
&lt;input type="reset" name="reset"  value="Reset" /&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<form>
<p>This is page 10</p>
<input type="hidden" name="pagename" value="10" />
<input type="submit" name="submit" value="Submit" />
<input type="reset" name="reset"  value="Reset" />
</form>
</div>


<br/><br/><br/><br/><br/>



<a href="HFonts.jsp">Previous</a>
<a href="HMarquees.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>