require_relative '../page_objects/stackoverflow_mainpage'\

Given(/^i am on stackoverflow homepage$/) do
  @main_page=StackOverflowMainPage.new($driver)
end

When(/^i click on the account button$/) do
  @main_page.account_details_click
end

Then(/^Account details page should open$/) do
  sleep 10
end