Greplib by H4x0 - http://crypt.noip.me

Greplib is a very overdeveloped (lol) script that reads all the public Grepolis game data 
and puts it in a organized database. This script has a ton of options as seen in the source 
of Greplib.Settings those settings are used globally across Greplib and its dependencies.

Everything in this script is well commented so it can be easily understood and edited. The 
reason I spent so much time developing a huge script to do what is seemingly a simple task 
is that this is my first major PHP project and I wanted to do it well. The goals were to have 
great readability, customization options, and plug-ability for future updates. I tried to write 
very clean code but as this is my first major PHP project I'm sure I messed up quite a bit 
with "proper" syntax and such which is why ill be supporting this project and updating it 
frequently.

Requirements:
	- Must be able to access the command line on 
	  your server. This entire script was built 
	  specifically for the command line PHP interpreter 
	  and CRON jobs (ie. crontab)
	  
	- PHP5+
	
Warnings:
	- If you use Windows you will have to make sure all
	  the paths in the script are mapped correctly as 
	  Windows uses \ where *nix uses /
	  
	- Greplib is NOT designed to be run on a web server, 
	  from a browser, and especially not by any end users. 
	  
	  I would highly recommend keeping Grepolib and its 
	  dependencies in a directory that is not accessible 
	  to the web.

How to use:
	1) Check Greplib.sql for the proper database
	   configuration. It is a valid SQL file that 
	   can be used to create the database using 
	   PHPMyAdmin or you can just copy the structure 
	   yourself.

	2) Edit Greplib.Settings
		- Set DB_HOST to your database host
		- Set DB_USER to your database username
		- Set DB_PASS to your database password
		- Set DB_NAME to your database name
		- Set DEBUG_MODE to TRUE
		
	3) Upload all files to your server
	
	4) Test Greplib
		- php Greplib
		- php Greplib update all
		
	5) If everything works edit Greplib.Settings
		- Set DEBUG_MODE to FALSE
	   
	6) OPTIONAL: Add to CRON
		- crontab -e
		- php Greplib update all > Greplib.Log 2>&1