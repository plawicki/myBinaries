My Beanaries
=======

Jest to projekt Ruby on Rails. Projek ten jest rozwiniętą wersją "myGists".

Demo
=======
[Hosted by Heroku](http://mybeanaries.herokuapp.com)

Funkcjonalność dodatkowa
=======

	* kolorowanie zapisanego kodu w oparciu o gem Pygments.rb
 	* infinite scrolling + paginacja, za pomocą javascript i gemu Kaminari
	* wyszukiwanie kodu po języku i opisie
	* zaimplementowany wygląd bootstrap, wraz z widokiem responsywnym
	* weryfikacja użytkowanika w celu udostępnienia funkcji dodawania, usuwania i edytowania kodów

Użyte ważniejsze gemy
=======
	
	* bootstrap-sass
	* pygments.rb
	* kaminari
	* attribute-defaults 
	* devise

Detale
=======
	* attribute-defaults - służy do dowania domyślnej wartości w formularzu dla pola Lang ('ruby':)
	* bootstrap dodany za pomocą gema
	* zostały zaimplementowane wszystkie wymagania TO-DO
	* widok jest responsywny, z opcją nieskończonego przewijania w razie korzystania za javascript (w przeciwnym wypadku paginacja kaminari)
	* wyszukiwanie na osobnej stronie po języku i opisie z działającym nieskończonym przewijaniem
	* użyta baza postgres
	* preferowane ruby >=2.1.0
	* rails 4.0.4

Infinite Scrolling
=======
	* infinite scrolling jest realizowane za pomocą gemu Kaminari
	* oraz za pomocą 3 skryptów javascript umieszczonych w plikach:
		* vendor/assets/javascripts/jquery.infinitescroll.js
		* app/assets/javascripts/beans.js.coffee
		* app/views/beans/index.js.erb
	* skrypty pochodzą z tutorialu [link](https://github.com/amatsuda/kaminari/wiki/How-To:-Create-Infinite-Scrolling-with-jQuery)
