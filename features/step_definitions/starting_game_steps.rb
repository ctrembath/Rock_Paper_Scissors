Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I fill out my name$/) do
  fill_in("player_name",:with => "Clare")
end

When(/^Press the "(.*?)" button$/) do |button_name|
 click_button(button_name)
end

Then(/^I should be taken to the game page$/) do
  expect(page).to have_content("make your move!")
end

Given(/^I have registered to play$/) do
  visit '/'
  step("I fill out my name")
  click_button("play")
end

When(/^I choose "(.*?)"$/) do |button_name|
  click_button(button_name)
end

Then(/^I should see result$/) do
  expect(page).to have_content("resultsa")
end

Then(/^I should see results page$/) do
  expect(page).to have_content("resultsa")
end
