# geolocdemo

This project demonstrates using geolocation spoofing with Firefox. This was taken mainly from [this blogpost](http://watirmelon.com/2014/09/18/faking-geolocation-in-selenium-webdriver-with-firefox/).

##Instructions

1. clone the project
1. bundle install
1. bundle exec ruby geolocation.rb

This should open your firefox browser to the geolocation HTML5 demo page with a pin in Las Vegas, Nevada (on Las Vegas Blvd.).

If you want to change the location, update the lat, lng coordinates in a file. You can use [a geolocation website](http://mygeoposition.com/) to find interesting coordinates.
