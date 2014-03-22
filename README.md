My Beanaries project by Patryk Ławicki
=======

It's a RoR project which contains a list of codes. You can add new one to the page after logging in

I use custom gems like:
	
	* pygments.rb // for styling codes on the page
	* redcarpet // needed by pygments
	* quiet_assets // turns off the Rails asset pipeline log
	* will_paginate // for pagination on the web
	* attribute-defaults // for initializing :lang value  as 'ruby'
	* devise // for login system
	* pg // connection to the db, needed by heroku

Project has also custom CSS written by me

To generate posts use rake db:seed
