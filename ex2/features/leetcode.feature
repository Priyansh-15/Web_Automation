Feature: Create New Account on Leetcode
  Scenario: Open Google
    When Browser is open
    Then Open Google.com

  Scenario: Open Leetcode.com
    Given Google.com is Opened
    When Search leetcode
    Then Open leetcode.com

  Scenario: Sign In to leetcode
    Given leetcode.com is Opened
    When Click on Sign In
    And Enter Account Details
    Then Account is logged In
