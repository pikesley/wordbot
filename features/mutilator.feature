Feature: Mutilate text

  Scenario: Mangle some text
    When I successfully run `mutilator generate destroy this text`
    Then the output should match /^d.....y t..s t..t$/
