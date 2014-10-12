Given(/^I am on the start game page$/) do
  visit 'start_game'
end


Given(/^I should be able to see: Alex, Select Your Weapon:$/) do
  expect(page).to have_content(text)
end

When(/^I should be able to select my weapon "(.*?)" "(.*?)" or "(.*?)"$/) do |text1, text2, text3|
  expect(page).to have_content
end

Then(/^I should click "(.*?)"$/) do |submit|
  click_button(submit)
end