When(/^I attempt to log in with (.*?)$/) do |type|
	case type
	when 'valid credentials'
		fill_in 'Email', with: 'test@example.com'
		fill_in 'Password', with: 'password'
	when 'an invalid password'
		fill_in 'Email', with: 'test@example.com'
		fill_in 'Password', with: 'bad_password'
	when 'an unregistered email'
		fill_in 'Email', with: 'tester@example.com'
		fill_in 'Password', with: 'password'
	else
		pending "add #{type}"
	end
	find_button("Log in").click
end

Then(/^I see I (have not|have) been logged in$/) do |type|
	case type
	when 'have not'
		expect(current_path).to eq login_path
	when 'have'
		expect(current_path).to eq account_path
	end
end

Given(/^I am logged in$/) do
  step "I have a user account"
  visit login_path
  step "I attempt to log in with valid credentials"
end

When(/^I log out$/) do
	click_link("Account")
	click_link("Log out")
end

Then(/^I see I have been redirected to the home page$/) do
	expect(current_path).to eq root_path
end