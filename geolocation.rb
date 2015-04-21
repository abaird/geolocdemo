require 'watir-webdriver'
require 'webdriver-user-agent'
profile = Selenium::WebDriver::Firefox::Profile.new
profile['geo.prompt.testing'] = true
profile['geo.prompt.testing.allow'] = true
# las vegas
lat = '36.1699410'
lng = '-115.1398300'
json_loc = "data:application/json,{\"location\":{\"lat\": #{lat},\"lng\":#{lng},\"accuracy\": 10.0}}"

profile['geo.wifi.uri'] = json_loc
driver = Webdriver::UserAgent.driver(:browser => :firefox, :agent => :iphone5s, :orientation => :portrait, :profile => profile)
b = Watir::Browser.new driver
b.goto 'html5demos.com/geo'

#{
#"status": "OK",
#"accuracy": 10.0,
#"location": {
#"lat": 40.7142700,
#"lng": -74.0059700,
#"latitude": 40.7142700,
#"longitude": -74.0059700,
#"accuracy": 10.0
#}
#}
#
