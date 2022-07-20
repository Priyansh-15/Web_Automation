require 'selenium-webdriver'
require 'page-object'
require 'data_magic'
require 'rspec/expectations'

Before do |scenario|
  @browser = Selenium::WebDriver.for :chrome

  DataMagic.yml_directory = 'features/data_magic'
  DataMagic.load'fixtures.yml'
end