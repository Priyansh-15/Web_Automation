Feature: Login on stackoverflow

  Scenario: To login on stackoverflow
    Given I am on stackoverflow login page
    When I enter username and password
    Then I get login to the site

  Scenario: Open account details
    Given i am on stackoverflow homepage
    When i click on the account button
    Then Account details page should open