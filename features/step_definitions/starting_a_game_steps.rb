Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I see "(.*?)"$/) do |text|
  page.has_content?(text)
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end