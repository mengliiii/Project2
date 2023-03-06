Feature: Favorites functionality
  User story:
  As a user, I should be able to add and remove files/folders to/from favorites

  Background:
    Given user is on the files page

  Scenario: Verify users to add files or folders to Favorites.
    When user clicks on the three dots icon next to any file or folder.
    And user clicks "Add to favorites" option
    And user clicks on the Favorites option from the top left menu
    Then user should see the added file in the favourites list

    Scenario: Verify users to remove files or folders from the Files modules, and make sure the files are not listed in the Favorites table.
      When user clicks on the three dots icon next to the file with the favorite icon
      And user clicks "Remove from favorites" option
      And user clicks on the "Favorites" option from top left corner.
      Then user shouldn't see the removed file or folder among favorites