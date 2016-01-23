Given(/^I (do not have|have) a user account$/) do |account|
	case account
	when 'do not have'
		# do nothing
	when 'have'
		@user = User.create(email: "test@example.com", password: "password")
	end
end

Given(/^I am on the (.*?) page$/) do |page|
	case page
	when 'sign up'
		visit signup_path
	when 'login'
		visit login_path
	else
		pending "add #{page}"
	end
end

Then(/^I see the text "(.*?)"$/) do |text|
	expect(page).to have_content text
end

Then(/^I see the field "(.*?)"$/) do |field|
	find_field(field)
end


Then(/^I see the button "(.*?)"$/) do |button|
	expect(page).to have_button button
end

When(/^I attempt to sign up with valid credentials$/) do
	fill_in "Email", :with => "test@example.com"
	fill_in "Password", :with => "password"
	fill_in "Confirmation", :with => "password"
	find_button("Sign Up").click
end

Then(/^I see I have been redirected to the login screen$/) do
	expect(current_path).to eq(login_path)
end

Then(/^I see the message "(.*?)"$/) do |msg|
	expect(page).to have_content msg
end


When(/^I attempt to sign up with an existing username$/) do
	step "I attempt to sign up with valid credentials"
end

Then(/^I see I have not created an account$/) do
	expect(current_path).to eq signup_path
end

Then(/^I see the error message "(.*?)"$/) do |error|
	expect(page).to have_content error
end