require_relative '../page_objects/stackoverflow_login'

Given(/^I am on stackoverflow login page$/) do
  @login_page= StackOverflowLogin.new($driver)
  @login_page.goto_login_page
  sleep 3
end

When(/^I enter username and password$/) do
  @login_page.login_with('bipel54013@tebyy.com','bipel54013@tebyyCom')
  sleep 5
end

Then(/^I get login to the site$/) do
  @login_page.submit_details
  sleep 5
end