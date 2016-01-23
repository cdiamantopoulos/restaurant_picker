Feature: User Signup

The app supports a user to create an account.

Valid credentials shall sign the user up.

Existing username shall remain on the same page and display an existing username error message.

Scenario: Valid credentials signup attempt

Given I do not have a user account
And I am on the sign up page
When I attempt to sign up with valid credentials
Then I see I have been redirected to the login screen
And I see the message "Signed up!"

Scenario: Username exists signup attempt

Given I have a user account
And I am on the sign up page
When I attempt to sign up with an existing username
Then I see the error message "Email is already in use."


Scenario Outline: Sign up page has correct fields

Given I am on the sign up page
Then I see the text "<text>"
And I see the field "<field>"

Examples:
|text|field|
|Name|_signup_name|
|Email|_signup_email|
|Password|_signup_password|
|Confirmation|_signup_password_confirmation|

Scenario: Sign up page has correct heading

Given I am on the sign up page
Then I see the text "Sign Up"

Scenario: Sign up page has Submit button

Given I am on the sign up page
Then I see the button "Sign Up"
