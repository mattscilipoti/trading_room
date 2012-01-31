Feature: Case Studies
  In order to decide when to trade
  A Trader
  Wants to manage case studies for a ticker

  Scenario: Creating a case study
    Given these Assets:
      | name | ticker |
      | Google | GOOG |

    When I am showing "GOOG"
    And I press "New Case Study"
    Then the header should be "GOOG"


