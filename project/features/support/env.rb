# require 'selenium-webdriver'
# require 'capybara/dsl'
# require 'capybara'
# require 'site_prism'
#
# BeforeAll do
#   Capybara.default_driver = :selenium
#   Capybara.register_driver :selenium do |app|
#     Capybara::Selenium::Driver.new(app, browser: :chrome)
#   end
# end