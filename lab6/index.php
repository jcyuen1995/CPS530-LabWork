<!DOCTYPE HTML> 
<html>
<head>
		<meta charset = "UTF-8"> 
			<title>
				Lab 6
			</title>
			<style>
				table, th, td {
    			border: 1px solid black;
			}
			</style>
			<link rel="stylesheet" type="text/css"
			href="https://j25yuen.herokuapp.com/stylesheet.css" />
			<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
      <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>


<SCRIPT>
	function hasNumbers(t)
	{
	return /\d/.test(t);
	}

function phonenumber(pnum)  
{  
return  !/^\(?([0-9]{3})\)?[-]?([0-9]{3})[-]?([0-9]{4})$/.test(pnum);
}  
function validateForm() {
	var fname = document.forms["demo_form"]["first_name"].value;
	var lname = document.forms["demo_form"]["last_name"].value;
	var address = document.forms["demo_form"]["address"].value;
	var pnumber = document.forms["demo_form"]["phone_number"].value;

	if (hasNumbers(fname)){
		alert("First name must contain only letters.");
		return false;
	}
	if (hasNumbers(lname)) {
		alert("Last name must contain only letters.");
		return false;
	}
	if (phonenumber(pnumber)) { 
		alert("Phone number must be in format: xxx-xxx-xxxx.  \nPhone number must contain only numbers.");
		return false;
	}
}

</SCRIPT>
</head>
<body>
<div class="center">
	<h1 class="signature">
			CPS530
		</h1>
		
		<p class ="myclass">
			Student Name: Jonathan Yuen
			<br>
			Student ID: 500582520
			<br>
		</p>

</div>
<div class = "center"> 
Enter the Following information: <br>

<FORM name = "demo_form"class = "center" action = "http://www2.scs.ryerson.ca/~s2dindya/cgi-bin/j25yuenlab6.rb" onsubmit= "return validateForm()" method = "post" >
<br> First name: <br>
<input type = "text" name = "first_name">
<br> Last name: <br>
<input type = "text" name = "last_name">
<br> Address: <br>
<input type = "text" name = "address">
<br> Phone number: <br>
<input type = "text" name = "phone_number">
<br>
<input type = "submit" value = "Submit">
</form>
</div>


</body>
</html>