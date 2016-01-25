Feature: Delete Restaurant

The App supports deleting existing restaurants.

Scenario: Delete Restaurant

Given I am logged in
And I have a restaurant named "New Restaurant"
When I delete the restaurant named "New Restaurant"
Then I see the message "Restaurant was successfully deleted."
And I no longer see the restaurant named "New Restaurant"