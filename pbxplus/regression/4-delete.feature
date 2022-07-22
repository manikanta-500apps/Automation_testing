Feature: Deleting modules

    Scenario: Validate the user is able to delete apps
        When I click on the link "Apps"
        And I click on the button using "My Apps"
        When I click on element using title "Twilio"
        When I wait for the element "//a[@title='Delete App']" with in "3" seconds
        And I click on element using title "Delete App"
        And I click on the button using "Confirm"

    Scenario: Validate the user is able to delete audio file
        When I click on the linktext "Calls Media"
        When I click on element using title "Delete"
        And I hover on the button text "Delete"
        And I click on the button using "Delete"
        Then I expect that element text "No media found" is visible

    Scenario: Validate the user is able to delete Phone Numbers
        When I click on the linktext "Phone Numbers"
        When I click on element using title "Delete"
        And I click on the button using "Confirm"

    Scenario: Validate the user is able to delete Callflows
        When I click on the linktext "Call Flows"
        And I click on "Delete" icon in a row
        And I click on the button using "Confirm"

    Scenario: Validate the user is able to delete users
        When I click on "settings navbar-user-link cursor-pointer" view button
        When I click on the linktext "Manage Users"
        And I click on "Remove" icon in a row
        And I click on the button using text "Delete"
        Then I expect that element text "Activate" is visible
        When I click on the button using text "Activate"