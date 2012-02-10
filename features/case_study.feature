Feature: Case Studies
  In order to decide when to trade
  A Trader
  Wants to manage case studies for a ticker

  Background:
    Given these Tickers:
      | name   | ticker |
      | Google | GOOG   |


  Scenario: Creating a case study (UX)
    When I am viewing Ticker "GOOG"
    And I click "New Case Study"
    


  Scenario: Creating a Weekly Case Study
    The first Case Study should be for the longest period (Weekly)

    Given I am creating a Case Study for "GOOG"

    Then the period should be "Weekly"
    And I should be able to leave a Comment



  Scenario Outline: SEO Basics
    Ensuring we cover the basi needs of SEO (h1, )

#    When I am viewing the Latest Case Study Ticker "<ticker>"
#    Then the headline should include "<ticker>"

#    Examples:
#      | ticker |
#      | GOOG   |

