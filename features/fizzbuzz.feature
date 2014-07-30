Feature: Not getting drunk
  As an recovered alcoholic
  I want to have a tool that allows me to play Fizz Buzz without drinking
  So I can still hang out with my friends

Background:
Given I am on the main screen

Scenario: Displays zero and fizzbuzz when launched
  Then I see a value of "0"
  And I see a result of "fizzbuzz"

Scenario: Increments value
  When I increment the value "3" times
  Then I see a value of "3"

Scenario: Decrements value
  When I increment the value "3" times
  And I decrement the value "2" times
  Then I see a value of "1"

Scenario Outline:
  When I set the value to "<value>"
  Then I see a value of "<value>"
  And I see a result of "<result>"

  Examples:
    | value | result   |
    |   0   | fizzbuzz |
    |   1   | 1        |
    |   2   | 2        |
    |   3   | fizz     |
    |   6   | fizz     |
    |   5   | buzz     |
    |  10   | buzz     |
    |  15   | fizzbuzz     |
    |  30   | fizzbuzz |
