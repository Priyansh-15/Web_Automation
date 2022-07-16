require 'selenium-webdriver'
require 'page-object'

BeforeAll do |scenario|
  $driver = Selenium::WebDriver.for :chrome
  $driver.manage.window.maximize
end
