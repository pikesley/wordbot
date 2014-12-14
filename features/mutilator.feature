Feature: Mutilate text

  Scenario: Mangle some text
    When I successfully run `mutilator generate destroy this text`
    Then the output should match /^d.....y t..s t..t$/

  Scenario: Mangle a file
    When I successfully run `mutilator from_file ../../features/fixtures/words.txt`
    Then the output should match /t..s f...........y m.......s u......e, t..s t........s r...e of t..e and/
