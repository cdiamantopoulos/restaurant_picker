Feature: User Login

The app supports a user to log in to their account.

Valid credentials shall log the user in and redirect to a splash welcome page.

Invalid password shall remain on the same page and display an invalid password error message.

Unregistered username shall remain on the same page and display an invalid username error message.

Scenario: Valid credentials login attempt

Given I have a user account
And I am on the login page
When I attempt to log in with valid credentials
Then I see I have been logged in

Scenario: Invalid Password login attempt

Given I have a user account
And I am on the login page
When I attempt to log in with an invalid password
Then I see I have not been logged in
And I see the error message "Password is not correct."

Scenario: Unregistered/Invalid username login attempt

Given I am on the login page
When I attempt to log in with an unregistered email
Then I see I have not been logged in
And I see the error message "Email does not exist."

Scenario: Login screen has correct heading

Given I am on the login page
Then I see the text "Log In"

Scenario: Login screen has Log in button

Given I am on the login page
Then I see the button "Log in"

Scenario Outline: Login screen has correct fields

Given I am on the login page
Then I see the text "<text>"
And I see the field "<field>"

Examples:
|text|field|
|Email|email|
|Password|password|

Scenario: User logout

Given I am logged in
When I log out
Then I see I have been redirected to the home page
And I see the message "You've been logged out successfully."
