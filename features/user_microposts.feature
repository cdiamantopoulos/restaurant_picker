Feature: User Microposts

The app supports a User to create a Micropost.

Microposts shall be text only and limited to 140 characters.

Empty Microposts will display error message.

All successful Microposts shall display on the Account Screen.

All Microposts can be deleted.


Scenario: Micropost post button is present

Given I am logged in
Then I see the field "micropost-form"
And I see the button "Post"

Scenario: No microposts

Given I am logged in
Then I see the text "Currently no posts..."
And I see the text "Add a post!"

Scenario: Empty micropost submission displays error message

Given I am logged in
When I submit a Micropost with text ""
Then I see the error message "Form can't be empty."

Scenario: Successful microposts displays on page

Given I am logged in
When I submit a Micropost with text "Test micropost!"
Then I see the message "Micropost created!"

Scenario: Microposts display to user

Given I have a user account with a Micropost
When I log in
And I view my individual Micropost
Then I see my Micropost

Scenario: Users Microposts display on page

Given I have a user account with several Microposts
When I log in
Then I see my Microposts are displayed

Scenario: Delete microposts

Given I have a user account with a Micropost
When I log in
And I delete a Micropost
Then I see the deleted Micropost is no longer displayed
And I see the message "Micropost deleted!"