Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I see "(.*?)"$/) do |text|
  page.has_content?(text)
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

Given(/^I am on the new game page$/) do
   visit ('/new_game')
end

When(/^I should see "(.*?)"$/) do |text|
  page.has_content?(text)
end

When(/^I should be able to enter my name$/) do
  fill_in('name', :with => 'Alex')
end

Then(/^I should be able to click "(.*?)"$/) do |submit|
  click_button(submit)
end