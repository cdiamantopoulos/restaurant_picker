Feature: Application Features

The App redirects to a Page Not Found page if an invalid URL is visited.

The App rescues all missing template errors and redirects to the root URL.

Scenario: Page Not Found URL

When I navigate to an invalid URL
Then I see I am redirected to Page Not Found