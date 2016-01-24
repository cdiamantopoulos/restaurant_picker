Feature: Add Restaurant

The App supports adding a Restaurant with the following attributes:

* Unique Name as a string.
* Price as an integer.
* Quick or Sit Down style which is a drop-down menu.

All fields are required and will give appropriate error messages if they are not filled out.

Scenario: Add Restaurant form elements are present

Given I am logged in
Then I see the text "Add a Restaurant!"
And I see the text field for "name" with placeholder text "Enter name"
And I see the text field for "price" with placeholder text "Enter price"
And I see the drop down menu with options "Quick" and "Sit Down"
And I see the button "Add!"

Scenario: Empty name field submission displays error

Given I am logged in
When I fill in the name text field with "Restaurant"
And I press the button "Add!"
Then I see the error message "Price can't be blank"

Scenario: Empty price field submission displays error
Given I am logged in
When I fill in the price text field with "10"
And I press the button "Add!"
Then I see the error message "Name can't be blank"

Scenario: Empty name and price field submission displays errors
Given I am logged in
When I press the button "Add!"
Then I see the error message "Name can't be blank"
Then I see the error message "Price can't be blank"

Scenario: Successful submission displays success message and adds Restaurant to list

Given I am logged in
When I fill in the name text field with "New Restaurant"
And I fill in the price text field with "10"
And I press the button "Add!"
Then I see the message "Restaurant was successfully created!"
And I see the Restaurant "New Restaurant" in the Restaurant list