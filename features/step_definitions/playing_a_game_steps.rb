Given(/^that I am on the result page$/) do
  visit '/game_result'
end

Given(/^I should be able to see the winner of the game$/) do
  page.has_content?(text)
end

Then(/^I should be able to see "(.*?)"$/) do |text|
  page.has_content?(text)
end

