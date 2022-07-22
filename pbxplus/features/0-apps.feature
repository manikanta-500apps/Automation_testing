Feature: Apps module

    Scenario: Validate the user is able to add twilio
        When  I wait for the element "//a[normalize-space()='Apps']" with in "3" seconds
        When  I click on the linktext "Apps"
        And   I click on the button using "Twilio"
        And   I add "ACf644fe3ffcaeb067ca5c6e41f91e7e90" into the inputfield with "accountsid"
        And   I add "7a04f6a951ce4073cbc568d27b322b44" into the inputfield with "authtoken"
        And   I click on the "Save" button
        When  I wait for the element "//h5[text()='Twilio']" with in "5" seconds
        Then  I expect that element text "My first Twilio account" is visible
        Then  I expect that element text "Twilio" is visible

    Scenario: Validate the user is able to edit twilio account in MY Apps field
        When  I wait for the element "//a[normalize-space()='Apps']" with in "3" seconds
        When  I click on the linktext "Apps"
        And   I click on the button using "My Apps"
        When  I click on element using title "Twilio"
        When  I wait for the element "//h5[normalize-space()='Twilio']//parent::div" with in "5" seconds
        When  I click on the options "edit" under my apps "Twilio"
        And   I add "ACf644fe3ffcaeb067ca5c6e41f91e7e90" into the inputfield with "accountsid"
        And   I add "7a04f6a951ce4073cbc568d27b322b44" into the inputfield with "authtoken"
        And   I click on the "Update" button
        Then  I expect that element text "Twilio" is visible
        

    Scenario: Validate the user is able to edit twilio account in MY Apps field
        When  I wait for the element "//a[normalize-space()='Apps']" with in "3" seconds
        When  I click on the linktext "Apps"
        And   I click on the button using "My Apps"
        When  I click on element using title "Twilio"
        When  I wait for the element "//h5[normalize-space()='Twilio']//parent::div" with in "5" seconds
        When  I click on the options "trash" under my apps "Twilio"
        when  I click on the button using text "Confirm"
