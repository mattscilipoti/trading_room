Feature: Case Studies
  In order to decide when to trade
  A Trader
  Wants to manage case studies for a ticker

  Scenario: Creating a case study
    Given these Tickers:
      | name   | ticker |
      | Google | GOOG   |

    When I am viewing Ticker "GOOG"
    And I click "New Case Study"
    Then the headline should include "GOOG"

