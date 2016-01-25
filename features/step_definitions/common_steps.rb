When(/^I navigate to an invalid URL$/) do
  visit '/invalid_url'
end

Then(/^I see I am redirected to (.*?)$/) do |page|
  case page
  when 'Page Not Found'
    expect(current_path).to eq "/page_not_found"
  when 'the Root URL'
    expect(current_path).to eq "/"
  else
    pending "add #{page}"
  end
end