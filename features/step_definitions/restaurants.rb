Then(/^I see the text field for "([^"]*)" with placeholder text "([^"]*)"$/) do |field, text|
  case field
  when 'name'
    expect(find("#restaurant_name")['placeholder']).to eq text
  when 'price'
    expect(find("#restaurant_price")['placeholder']).to eq text
  end
end

Then(/^I see the drop down menu with options "([^"]*)" and "([^"]*)"$/) do |opt1, opt2|
  expect(page).to have_select("restaurant_style", :options => [opt1,opt2])
end

When(/^I fill in the name text field with "([^"]*)"$/) do |name|
  fill_in 'restaurant_name', with: "#{name}"
end

When(/^I press the button "([^"]*)"$/) do |button|
  find_button(button).click
end

When(/^I fill in the price text field with "([^"]*)"$/) do |price|
  fill_in 'restaurant_price', with: "#{price}"
end

Then(/^I see the Restaurant "([^"]*)" in the Restaurant list$/) do |txt|
  expect(page).to have_content txt
end

Given(/^I have a restaurant named "(.*?)"$/) do |name|
  fill_in 'restaurant_name', with: "#{name}"
  fill_in 'restaurant_price', with: "10"
  find_button("Add!").click
  expect(page).to have_content name
end

When(/^I delete the restaurant named "(.*?)"$/) do |name|
  find_link("delete").click
end

Then(/^I no longer see the restaurant named "(.*?)"$/) do |name|
  expect(page).to_not have_content name
end

