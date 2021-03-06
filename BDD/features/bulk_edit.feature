Feature: Crowbar, Bulk Edit
  In order use quickly edit/allocate notes
  The system operator, Oscar
  wants to be able to alias/description/allocation make changes to nodes
      
  Scenario: Primary Nav
    When I go to the home page
    Then I should see a menu for "Bulk&nbspEdit"
      And I should not see "something went wrong"

  Scenario: Bulk Edit Nav (default)
    Given I am on the home page
    When I click on the "Bulk Edit" menu item
    Then I should see heading {bdd:crowbar.i18n.dashboard.list.title_unallocated}
      And I should see "Allocate?"
      And I should see a link to "Show All"
      And I should not see "something went wrong"
      And there should be no translation errors

  Scenario: Bulk Edit Nav (show all)
    Given I am on the "/dashboard/list?allocated=yes" page
    When I click on the "Show All" link
    Then I should see heading {bdd:crowbar.i18n.dashboard.list.title_all}
      And I should see "Allocate?"
      And I should see a link to "Show Unallocated"
      And I should see a button with "Save"
      And I should not see "something went wrong"
      And there should be no translation errors

