@editor @editor_atto @atto @atto_bsgrid @_bug_phantomjs
Feature: Atto bsgrid
  To layout content in Atto, I need to insert bootstrap grids

  Background: Ensure grid button in toolbar
    Given the following config values are set as admin:
      | toolbar  | "bootstrap = bsgrid" | editor_atto  |
      | enabled_templates | col2,col3,col4,col6 | atto_bsgrid |

  @javascript
  Scenario: Create a 2 column grid
    Given I log in as "admin"
    And the following config values are set as admin:
      | toolbar  | bsgrid = bsgrid | editor_atto |
    And I am on homepage
    And I click on "Add a new course" "button"
    And I click on "Bootstrap Grid" "button"
    When I click on "a[title='2 Columns']" "css_element"
    Then ".editor_atto_content .container-fluid .row-fluid" "css_element" should be visible
    And ".editor_atto_content .span2" "css_element" should not exist
    And ".editor_atto_content .span3" "css_element" should not exist
    And ".editor_atto_content .span4" "css_element" should not exist
    And ".editor_atto_content .span6" "css_element" should be visible

  # @javascript
  # Scenario: Edit a table
  #   Given I log in as "admin"
  #   And I am on homepage
  #   And I expand "My profile" node
  #   And I expand "Blogs" node
  #   And I follow "Add a new entry"
  #   And I set the field "Entry title" to "How to make a table"
  #   And I set the field "Blog entry body" to "<table><tr><td>Cell</td></tr></table>"
  #   And I select the text in the "Blog entry body" Atto editor
  #   And I click on "Show more buttons" "button"
  #   And I click on "Table" "button"
  #   And I click on "Edit table" "link"
  #   And I set the field "Caption" to "Dinner"
  #   And I press "Update table"
  #   And I press "Save changes"
  #   Then ".blog_entry table caption" "css_element" should be visible


