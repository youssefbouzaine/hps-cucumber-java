Feature: Descaling


  Background:
    Given I handle coffee grounds
    And I handle water tank
    And I handle beans

  Scenario: Descaling is needed after 500 coffees
    # Deascaling is recorded after 500 coffee
    When I take "500" coffees
    Given the coffee machine is started
    Then notification descaling is displayed
