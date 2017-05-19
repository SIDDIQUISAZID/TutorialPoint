<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Files And Streams</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>C++ FILES AND STREAMS</h1>


<p>So far, we have been using the <b>iostream</b> standard library, which provides <b>cin</b> and <b>cout</b> methods for reading from standard input and writing to standard output respectively.</p>
<p>This tutorial will teach you how to read and write from a file. This requires another standard C++ library called <b>fstream</b>, which defines three new data types:</p>
<table class="table table-bordered">
<tr>
<th width="30%">Data Type</th>
<th>Description</th>
</tr>
<tr> 
<td>ofstream</td>
<td>This data type represents the output file stream and is used to create files and to write information to files.</td>
</tr>
<tr> 
<td>ifstream</td>
<td>This data type represents the input file stream and  is used to read information from files.</td> 
</tr>
<tr> 
<td>fstream</td>
<td>This data type represents the file stream generally, and has the capabilities of both ofstream and ifstream which means it can create files, write information to files, and read information from files.</td> 
</tr>
</table>
<p>To perform file processing in C++, header files &lt;iostream&gt; and &lt;fstream&gt; must be included in your C++ source file.</p>
<h2>Opening a File:</h2>
<p>A file must be opened before you can read from it or write to it. Either the <b>ofstream</b> or <b>fstream</b> object may be used to open a file for writing and ifstream object is used to open a file for reading purpose only.</p>
<p>Following is the standard syntax for open() function, which is a member of fstream, ifstream, and ofstream objects.</p>
<pre class="prettyprint notranslate">
void open(const char *filename, ios::openmode mode);
</pre>
<p>Here, the first argument specifies the name and location of the file to be opened and the second argument of the <b>open()</b> member function defines the mode in which the file should be opened.</p>
<table class="table table-bordered">
<tr>
<th width="30%">Mode Flag</th>
<th>Description</th>
</tr>
<tr> 
<td>ios::app</td>
<td>Append mode. All output to that file to be appended to the end.</td>
</tr>
<tr> 
<td>ios::ate</td>
<td>Open a file for output and move the read/write control to the end of the file.</td>
</tr>
<tr> 
<td>ios::in</td>
<td>Open a file for reading.</td>
</tr>
<tr> 
<td>ios::out</td>
<td>Open a file for writing.</td>
</tr>
<tr> 
<td>ios::trunc</td>
<td>If the file already exists, its contents will be truncated before opening the file.</td>
</tr>
</table>
<p>You can combine two or more of these values by <b>OR</b>ing them together. For example if you want to open a file in write mode and want to truncate it in case it already exists, following will be the syntax:</p>
<pre class="prettyprint notranslate">
ofstream outfile;
outfile.open("file.dat", ios::out | ios::trunc );
</pre>
<p>Similar way, you can open a file for reading and writing purpose as follows:</p>
<pre class="prettyprint notranslate">
fstream  afile;
afile.open("file.dat", ios::out | ios::in );
</pre>
<h2>Closing a File</h2>
<p>When a C++ program  terminates it automatically closes flushes all the streams, release all the allocated memory and close all the opened files. But it is always a good practice that a programmer should close all the opened files before program termination.</p>
<p>Following is the standard syntax for close() function, which is a member of fstream, ifstream, and ofstream objects.</p>
<pre class="prettyprint notranslate">
void close();
</pre>
<h2>Writing to a File:</h2>
<p>While doing C++ programming, you write information to a file from your program using the stream insertion operator (&lt;&lt;) just as you use that operator to output information to the screen. The only difference is that you use an <b>ofstream</b> or <b>fstream</b> object instead of the <b>cout</b> object.</p>
<h2>Reading from a File:</h2>
<p>You read information from a file into your program using the stream extraction operator (&gt;&gt;) just as you use that operator to input information from the keyboard. The only difference is that you use an <b>ifstream</b> or <b>fstream</b> object instead of the <b>cin</b> object.</p>
<h2>Read &amp; Write Example:</h2>
<p>Following is the C++ program which opens a file in reading and writing mode. After writing information inputted by the user to a file named afile.dat, the program reads information from the file and outputs it onto the screen:</p>
<pre class="prettyprint notranslate">
#include &lt;fstream&gt;
#include &lt;iostream&gt;
using namespace std;
 
int main ()
{
    
   char data[100];

   // open a file in write mode.
   ofstream outfile;
   outfile.open("afile.dat");

   cout &lt;&lt; "Writing to the file" &lt;&lt; endl;
   cout &lt;&lt; "Enter your name: "; 
   cin.getline(data, 100);

   // write inputted data into the file.
   outfile &lt;&lt; data &lt;&lt; endl;

   cout &lt;&lt; "Enter your age: "; 
   cin &gt;&gt; data;
   cin.ignore();
   
   // again write inputted data into the file.
   outfile &lt;&lt; data &lt;&lt; endl;

   // close the opened file.
   outfile.close();

   // open a file in read mode.
   ifstream infile; 
   infile.open("afile.dat"); 
 
   cout &lt;&lt; "Reading from the file" &lt;&lt; endl; 
   infile &gt;&gt; data; 

   // write the data at the screen.
   cout &lt;&lt; data &lt;&lt; endl;
   
   // again read the data from the file and display it.
   infile &gt;&gt; data; 
   cout &lt;&lt; data &lt;&lt; endl; 

   // close the opened file.
   infile.close();

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following sample input and output:</p>
<pre class="prettyprint notranslate">
$./a.out
Writing to the file
Enter your name: Zara
Enter your age: 9
Reading from the file
Zara
9
</pre>
<p>Above examples make use of additional functions from cin object, like getline() function to read the line from outside and ignore() function to ignore the extra characters left by previous read statement.</p>
<h2>File Position Pointers:</h2>
<p>Both <b>istream</b> and <b>ostream</b> provide member functions for repositioning the file-position pointer. These member functions are <b>seekg</b> ("seek get") for istream and <b>seekp</b> ("seek put") for ostream.</p>
<p>The argument to seekg and seekp normally is a long integer. A second argument can be specified to indicate the seek direction. The seek direction can be <b>ios::beg</b> (the default) for positioning relative to the beginning of a stream, <b>ios::cur</b> for positioning relative to the current position in a stream or <b>ios::end</b> for positioning relative to the end of a stream.</p>
<p>The file-position pointer is an integer value that specifies the location in the file as a number of bytes from the file's starting location. Some examples of positioning the "get" file-position pointer are:</p>
<pre class="prettyprint notranslate">
// position to the nth byte of fileObject (assumes ios::beg)
fileObject.seekg( n );

// position n bytes forward in fileObject
fileObject.seekg( n, ios::cur );

// position n bytes back from end of fileObject
fileObject.seekg( n, ios::end );

// position at end of fileObject
fileObject.seekg( 0, ios::end );
</pre>



<br/><br/><br/><br/><br/>
<a href="C++Interfaces.jsp">Previous</a>
<a href="C++Exception.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>