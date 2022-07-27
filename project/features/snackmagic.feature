Feature: Order snack on snackmagic
  Scenario: Navigate to website
    Given browser is open
    Then open automation-frontendsnackmagic

  Scenario: Click start an order button
    Given you are on home page
    Then click start and create a new order

  Scenario: Enter treat details
    Given you are on enter treat details page
    Then Fill treat name ,sender name and click on create order

  Scenario: Enter type of box
    Then choose box type

  Scenario: Enter budget
    Then choose budget

  Scenario: restrict your link
    Then choose restrict your link

  Scenario: Number of recipients
    Then choose total number of recipients

  Scenario: email address
    Then enter email address

  Scenario: recipients address
    Then choose recipients address

  Scenario: link expiration
    Then choose link expiration

  Scenario: shipping
    Then choose shipping

  Scenario: write message
    Then write message

  Scenario: add-ons
    Then choose add-ons

  Scenario: checkout
    Then choose checkout

  Scenario: link expiration
    Then choose link expiration

  Scenario: Payment
    Then choose Payment


