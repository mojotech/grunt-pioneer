module.exports = ->
  firstNumber = secondNumber = sum = expectedSum = null

  @Given /^I have the numbers (\d+) and (\d+)$/, (arg1, arg2) ->
    firstNumber = parseInt arg1
    secondNumber = parseInt arg2

  @When /^I add them together$/, ->
    sum = firstNumber + secondNumber

  @Then /^I should have (\d+)$/, (arg1) ->
    expectedSum = parseInt arg1
    throw new Error "It doesn't add up! #{arg1} isn't #{sum}" if expectedSum isnt sum
