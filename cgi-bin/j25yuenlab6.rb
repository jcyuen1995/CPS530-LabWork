#!/usr/bin/ruby
require 'cgi'

puts "Content-type: text/html\n\n"
puts <<-HTML
<!DOCTYPE html>
<html>
<head>
		<meta charset = "UTF-8">
			<title>
				Lab 5
			</title>
			<style>
				table, th, td {
    			border: 1px solid black;
			}
			</style>
			<link rel="stylesheet" type="text/css"
			href="https://j25yuen.herokuapp.com/stylesheet.css"/>
			<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
      <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
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
</div>"
HTML
cgi = CGI.new
first_name = cgi['first_name'].capitalize
last_name = cgi['last_name'].capitalize
address = cgi['address'].split.map(&:capitalize).join(' ')
phoneno = cgi['phone_number']
puts <<-HTML
<div class="center">
		<h1>
			Welcome #{first_name}, #{last_name}.
		</h1>
		Your address is #{address}.
		</div>"
<div class = "center"> This is your phone number
HTML


phoneno.split('-').each_with_index do |digit, index|
	color = "#"+"%06x" % (rand * 0xffffff)
	if index == 0
		puts "<span class=\"placeholder\" style=\"color:#{color};\">(#{digit})"
	else
		puts "<span class= \"placeholder\" style=\"color:#{color};\">#{digit}"
	end

	if index < phoneno.split('-').size - 1
		puts "-"
	end
	puts "</span>"
end
puts <<-HTML
      <script>
    $('.placeholder').hide().each(function(index) {
     $(this).delay(300 * index).fadeIn(1000);
    });
  </script>
  </body>
</div>
</html>
HTML
