Feature: Numbers module

    Scenario: Validate the user is able to save number without data
        When I click on the linktext "Phone Numbers"
        And I click on circular plus button
        And I click on the button using text "Save"
        Then I expect that element text "Add Number" is visible

    Scenario: Validate the user is able to save number without data
        When I click on the linktext "Phone Numbers"
        And I click on circular plus button
        And I add "Hii" into the inputfield with contains "Enter number name"
        And I click on the button using text "Save"
        Then I expect that element text "Add Number" is visible

    Scenario: Validate the user is able to save number without data
        When I wait for the element "//a[normalize-space()='Phone Numbers']" with in "3" seconds
        When I click on the linktext "Phone Numbers"
        And I click on circular plus button
        And I add "Hii" into the inputfield with contains "Enter number name"
        And I select the "text" "Twilio" from the dropdown using label "Select App"
        And I click on the button using text "Save"
        Then I expect that element text "Add Number" is visible

    Scenario: Validate the user is able to save number without data
        When I wait for the element "//a[normalize-space()='Phone Numbers']" with in "3" seconds
        When I click on the linktext "Phone Numbers"
        And I click on circular plus button
        And I add "Hii" into the inputfield with contains "Enter number name"
        And I select the "text" "Twilio" from the dropdown using label "Select App"
        When I wait for the element "//*[contains(text(),'Select Phone number')]" with in "3" seconds
        And I click on the multi select drop down in slide out "numbers_show"
        When I click on the button with text "+13187029276"
        And I click on the button using text "Save"
        Then I expect that element text "Add Number" is visible

    Scenario: Validate the user is able to save number with invalid data
        When I wait for the element "//a[normalize-space()='Phone Numbers']" with in "3" seconds
        When I click on the linktext "Phone Numbers"
        And I click on circular plus button
        And I add "Hii" into the inputfield with contains "Enter number name"
        And I select the "text" "Please select telephony App" from the dropdown using label "Select App"
        And I click on the button using text "Save"
        Then I expect that element text "Add Number" is visible

    Scenario: Validate the user is able to save number with invalid data
        When I wait for the element "//a[normalize-space()='Phone Numbers']" with in "3" seconds
        When I click on the linktext "Phone Numbers"
        And I click on circular plus button
        And I add "Hii" into the inputfield with contains "Enter number name"
        And I select the "text" "Twilio" from the dropdown using label "Select App"
        When I wait for the element "//*[contains(text(),'Select Phone number')]" with in "3" seconds
        And I click on the multi select drop down in slide out "numbers_show"
        And I click on the button using "+13187029276"
        And I select the "text" "Please select flow" from the dropdown using label "Select Call Flow"
        And I click on the button using text "Save"
        Then I expect that element text "Add Number" is visible

    Scenario: Validate the user is able to save number with invalid data
        When I wait for the element "//a[normalize-space()='Phone Numbers']" with in "3" seconds
        When I click on the linktext "Phone Numbers"
        And I click on circular plus button
        And I add "Hii" into the inputfield with contains "Enter number name"
        And I select the "text" "Twilio" from the dropdown using label "Select App"
        When I wait for the element "//*[contains(text(),'Select Phone number')]" with in "3" seconds
        And I select the "text" "Newgridview" from the dropdown using label "Select Call Flow"
        And I click on the button using text "Save"
        Then I expect that element text "Duplicate Entry" is visible

    Scenario: Validate the user is able to add the Numbers module
        When I wait for the element "//a[normalize-space()='Phone Numbers']" with in "3" seconds
        When I click on the linktext "Phone Numbers"
        And I click on circular plus button
        And I add "Hii" into the inputfield with contains "Enter number name"
        And I select the "text" "Twilio" from the dropdown using label "Select App"
        When I wait for the element "//*[contains(text(),'Select Phone number')]" with in "3" seconds
        And I click on the multi select drop down in slide out "numbers_show"
        And I click on the button using "+13187029276"
        And I select the "text" "Newgridview" from the dropdown using label "Select Call Flow"
        And I click on the button using text "Save"
        When I wait for the element "//*[contains(text(),'twilio')]" with in "5" seconds
        Then I expect that element text "Twilio" is visible

    Scenario: Validate the user is able to edit the Numbers module
        When I wait for the element "//a[normalize-space()='Phone Numbers']" with in "3" seconds
        When I click on the linktext "Phone Numbers"
        When I click on "Edit" icon in a row
        And I add "Clear" into the inputfield with contains "Enter number name"
        And I select the "text" "Twilio" from the dropdown using label "Select App"
        When I wait for the element "//*[contains(text(),'Select Phone number')]" with in "3" seconds
        And I click on the multi select drop down in slide out "numbers_show"
        And I click on the button using "+13187029276"
        And I select the "text" "Automation@testing" from the dropdown using label "Select Call Flow"
        And I click on the button using text "Save"
        Then I expect that element text "Twilio" is visible

    Scenario: Validate the user is able to search the number field in grid view
        When I wait for the element "//a[normalize-space()='Phone Numbers']" with in "3" seconds
        When I click on the linktext "Phone Numbers"
        And I click on element using title "Grid view"
        And I add "Auto" into the inputfield with contains "Search"
        Then I expect that element text "Automation@testing" is visible

    Scenario: Validate the user is able to search the invalid number field in grid view and receives a validation message
        When I wait for the element "//a[normalize-space()='Phone Numbers']" with in "3" seconds
        When I click on the linktext "Phone Numbers"
        And I click on element using title "Grid view"
        And I add "NoNumber" into the inputfield with contains "Search"
        Then I expect that element text "No Results Found" is visible

    Scenario: Validate the user is able to search the number field in list view
        When I wait for the element "//a[normalize-space()='Phone Numbers']" with in "3" seconds
        When I click on the linktext "Phone Numbers"
        And I add "Auto" into the inputfield with contains "Search"
        Then I expect that element text "Automation@testing" is visible

    Scenario: Validate the user is able to search the invalid number field in list view and receives a validation message
        When I wait for the element "//a[normalize-space()='Phone Numbers']" with in "3" seconds
        When I click on the linktext "Phone Numbers"
        And I add "NoNumber" into the inputfield with contains "Search"
        Then I expect that element text "No Results Found" is visible