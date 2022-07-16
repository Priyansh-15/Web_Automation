require 'selenium-webdriver'
require 'page-object'
class StackOverflowLogin
  include PageObject
  text_field(:email, :id => 'email')
  text_field(:pass, :id => 'password')
  button(:submit, :id => 'submit-button')
  link(:account_details, :class => 's-user-card')

  def goto_login_page
    navigate_to 'https://stackoverflow.com/users/login'
  end

  def login_with(username, password)
    self.email = username
    self.pass = password
  end

  def submit_details
    submit
  end
end
#
# driver = Selenium::WebDriver.for :chrome
# driver.manage.window.maximize
#
# a = StackOverflowLogin.new(driver)
# a.goto_login_page
