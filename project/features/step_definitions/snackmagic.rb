require 'selenium-webdriver'
require 'page-object'

driver = Selenium::WebDriver.for(:chrome)

class SnackMagic
  include PageObject
  button(:login_button, :xpath => '//*[@id="root"]/div/div[2]/div/div/div/div/div[3]/header/div[2]/div[3]/div[2]/button')
  text_field(:username, :name => 'email')
  text_field(:password, :name => 'password')
  button(:login, :type => 'submit')
  link(:start_order, :text => 'Start an order')
  link(:start_new_order, :text => 'or, Start a New Order')
  text_field(:treat_name, :id => 'treatName')
  text_field(:from,:id => 'senderName')
  labels(:options, :class => 'custom-border-radio-content')
  div(:snacks_and_swags, :xpath => '//*[@id="send-a-treat"]/div[3]/div[2]/div[3]/div/label/div[1]/div[1]/div[1]')
  elements(:submit_button, :class =>'btn-primary')
  text_field(:total_reciepents, :name => 'expectedCount')
  text_field(:international_reciepents, :name => 'internationalCount')
  element(:payment_button, :class => 'btn-primary')
end

sm = SnackMagic.new(driver)

Given(/^browser is open$/) do
  driver.manage.window.maximize
end

Then("open automation-frontendsnackmagic") do
  sm.navigate_to('https://admin:admin@automation-frontend.snackmagic.com')
  sleep(5)
end

Given(/^you are on home page$/) do
end

Then(/^click start and create a new order$/) do
  sm.login_button
  sleep 2
  sm.username = 'avneet+4444@vinsol.com'
  sm.password = 'Vinsol1.'
  sleep 2
  sm.login
  sleep 2
end

Given(/^you are on enter treat details page$/) do
  sm.start_order
  sleep(4)
end

Then(/^Fill treat name ,sender name and click on create order$/) do
  sm.start_new_order
  sleep(4)
  sm.treat_name = 'Priyansh Order'
  sm.from = 'Priyansh Sharma'
  sm.options_elements[0].click
  sm.snacks_and_swags_element.click
  sleep 4
  sm.login
end

Then(/^choose box type$/) do
  sleep(5)
  sm.options_elements[0].click
  sm.submit_button_elements[0].click
  sleep(3)
end

Then(/^choose budget$/) do
  sm.options_elements[0].click
  sm.submit_button_elements[0].click
  sleep(3)
end

Then(/^choose restrict your link$/) do
  sm.options_elements[0].click
  sm.submit_button_elements[0].click
  sleep(3)

end

Then(/^choose total number of recipients$/) do

  sm.total_reciepents = 5
  sm.international_reciepents = 0
  sm.submit_button_elements[0].click
  sleep(3)
end

Then(/^enter email address$/) do
  sm.submit_button_elements[0].click
  sleep(3)
end

Then(/^choose recipients address$/) do
  sm.options_elements[1].click
  sm.submit_button_elements[0].click
  sleep(3)
end

Then(/^choose link expiration$/) do
  sm.submit_button_elements[0].click
  sleep(3)

end

Then(/^choose shipping$/) do
  sm.options_elements[0].click
  sm.submit_button_elements[0].click
  sleep(3)

end

Then(/^write message$/) do
  sm.submit_button_elements[0].click
  sleep(3)
end

Then(/^choose add\-ons$/) do
  sm.submit_button_elements[0].click
  sleep(3)
end

Then(/^choose checkout$/) do
  sm.options_elements[1].click
  sm.submit_button_elements[0].click
  sleep(3)

  sm.options_elements[1].click
  sm.submit_button_elements[0].click
  sleep(3)

  sm.options_elements[1].click
  sm.submit_button_elements[0].click
  sleep(3)

  sm.options_elements[0].click
  sm.submit_button_elements[0].click
  sleep(3)

  sm.options_elements[1].click
  sm.submit_button_elements[0].click
  sleep(3)

  sm.options_elements[2].click
  sm.submit_button_elements[0].click
  sleep(3)

  sm.options_elements[1].click
  sleep(3)
end

Then(/^choose Payment$/) do
  sleep(4)
  sm.payment_button_element.click
  sleep(4)
  sm.options_elements[0].click
  sm.submit_button_elements[0].click
  sleep(3)

  sm.options_elements[0].click
  sm.submit_button_elements[0].click
  sleep(10)

  sm.options_elements[2].click
  sm.submit_button_elements[0].click
  sleep(5)
end