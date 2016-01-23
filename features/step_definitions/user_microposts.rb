When(/^I submit a Micropost with text "(.*?)"$/) do |text|
	fill_in "micropost-form", :with => text
	click_button("Post")
end

Given(/^I have a user account with (a|several) (Micropost|Microposts)$/) do |count, article|
	step "I have a user account"
	case count
	when 'a'
		@posts = ['My first micropost.']
	when 'several'
		@posts = ['My first micropost.','Drank a coke!', 'Ate pizza today.', 'Ruby on rails!']
	end
	@posts.each { |post| @user.microposts.create(content: post) }
end

When(/^I log in$/) do
	visit login_path
	step "I attempt to log in with valid credentials"
end

Then(/^I see my Microposts are displayed$/) do
	@posts.each { |post| expect(page).to have_content post }
end

When(/^I delete a Micropost$/) do
	click_link("delete")
end

Then(/^I see the deleted Micropost is no longer displayed$/) do
	@posts.each { |post| expect(page).to_not have_content post}
end

When(/^I view my individual Micropost$/) do
	visit "/microposts/1"
end

Then(/^I see my Micropost$/) do
	expect(page.text).to eq "My first micropost."
end