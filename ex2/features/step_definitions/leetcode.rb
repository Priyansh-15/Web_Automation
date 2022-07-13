When(/^Browser is open$/) do
  $driver = Selenium::WebDriver.for :chrome unless $driver
end

Then(/^Open Google\.com$/) do
  $driver.navigate.to 'https://www.google.com/'
  sleep 3
end

Given(/^Google\.com is Opened$/) do
  $driver.navigate.to 'https://www.google.com/'
  sleep 3
end

When(/^Search leetcode$/) do
  a=$driver.find_element(name: 'q')
  a.send_keys('LeetCode')
  a.send_keys(:enter)
  sleep 5
end

Then(/^Open leetcode\.com$/) do
  $driver.find_element(xpath: '//*[@id="rso"]/div[1]/div/div/div/div/div/div/div[1]/a/h3').click
  sleep 5
end

Given(/^leetcode\.com is Opened$/) do
  $driver.navigate.to 'https://www.leetcode.com/'
  sleep 5
end

When(/^Click on Sign In$/) do
  $driver.find_element(xpath: '//*[@id="landing-page-app"]/div/div[1]/div[3]/div[1]/div/div/div[2]/div/a[5]/span').click
  sleep 5
end

And(/^Enter Account Details$/) do
  $driver.find_element(xpath: '//*[@id="id_login"]').send_keys('Exercise2')
  $driver.find_element(xpath: '//*[@id="id_password"]').send_keys('Exercise2')
  $driver.find_element(xpath: '//*[@id="signin_btn"]/div').click
  sleep 8
end

Then(/^Account is logged In$/) do
  sleep 5
end