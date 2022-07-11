require 'selenium-webdriver'

class LeetCode
  def initialize(driver)
    @driver=driver
  end

  def l_home(search)
    @driver.find_elements(:tag_name, 'h3').each do |element|
      if element.text.eql?(search)
        element.click
        break
      end
    end
  end

  def navigate(search)
    @driver.navigate.to 'https://www.google.com/'
    sleep 10
    a=@driver.find_element(name: 'q')
    a.send_keys(search)
    a.send_keys(:enter)
    sleep 15
    l_home('LeetCode - The World\'s Leading Online Programming ...')
    sleep 20
  end
end

leet = LeetCode.new(Selenium::WebDriver.for :chrome)
leet.navigate('leetcode')