require 'selenium-webdriver'
require 'page-object'
class StackOverflowMainPage
  include PageObject
  link(:account_details, :class => 's-user-card')
  def account_details_click
    account_details
  end
end