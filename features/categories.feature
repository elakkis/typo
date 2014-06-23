Feature: Create Categories
  As a blog administrator
  In order to categorize my articles
  I want to be able to create and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Go to Categories Web Page
    When I follow "Categories"
    Then I should be on the admin categories page
		And I should see "Categories"
		And I should see "Title"
		And I should see "Description"
		And I should see "Permalink"
		And I should see "Keywords"

	Scenario: categories page lists newly created category is saved
		When I follow "Categories"
		And I fill in "Test Category" for "Name"
		And I fill in "Test description" for "Description"
		And I press "Save"
		Then I should be on the admin categories page
		And I should see "Test Category"
		And I should see "Test description"
