Feature: Division

  Scenario Outline: Dividing two numbers
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"
    Examples:
    |input|output|
    |2/2  |1     |
    |9/3  |3     |