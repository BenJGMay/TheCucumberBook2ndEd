require 'watir'
@browser = Watir::Browser.new :chrome
@browser.goto("http://puppies.herokuapp.com/")
puts "Sleeping for 20 seconds"
sleep(20)
puts "Closing"
@browser.close
