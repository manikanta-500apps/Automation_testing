Feature: Apps module

    Scenario: Validate the user is able to install twilio without data
        When I wait for the element "//a[normalize-space()='Apps']" with in "3" seconds
        When I click on the linktext "Apps"
        And  I click on the button using "Twilio"
        And   I click on the "Save" button
        Then I expect that element text "authtoken" is visible

    Scenario: Validate the user is able to install twilio with invalid data
        When I wait for the element "//a[normalize-space()='Apps']" with in "3" seconds
        When I click on the linktext "Apps"
        And  I click on the button using "Twilio"
        And  I add "AC8f3da366cba690b0" into the inputfield with "accountsid"
        And  I add "146b6a3e79e36467f1" into the inputfield with "authtoken"
        And   I click on the "Save" button
        Then I expect that element text "Twilio" is visible

    Scenario: Validate the user is able to install twilio with invalid data
        When I wait for the element "//a[normalize-space()='Apps']" with in "3" seconds
        When I click on the linktext "Apps"
        And  I click on the button using "Twilio"
        And  I add "AC8f3da366cba690b012209cc0bbff5a54" into the inputfield with "accountsid"
        And   I click on the "Save" button
        Then I expect that element text "Enter all fields" is visible

    Scenario: Validate the user is able to install twilio with invalid data
        When I wait for the element "//a[normalize-space()='Apps']" with in "3" seconds
        When I click on the linktext "Apps"
        And  I click on the button using "Twilio"
        And  I add "146b6a3e79e36563032a0377830467f1" into the inputfield with "accountsid"
        And   I click on the "Save" button
        Then I expect that element text "Enter all fields" is visible

    Scenario: Validate the user is able to install twilio with invalid data
        When I wait for the element "//a[normalize-space()='Apps']" with in "3" seconds
        When I click on the linktext "Apps"
        And  I click on the button using "Twilio"
        And  I add "146b6a3e79e36563032a0377830467f1" into the inputfield with "accountsid"
        And  I add "AC8f3da366cba690b012209cc0bbff5a54" into the inputfield with "authtoken"
        And   I click on the "Save" button
        Then I expect that element text "authtoken" is visible

    Scenario: Validate the user is able to add twilio
        When I wait for the element "//a[normalize-space()='Apps']" with in "3" seconds
        When I click on the linktext "Apps"
        And  I click on the button using "Twilio"
        And  I add "AC649b3f3369d32bd34387001ee2830184" into the inputfield with "accountsid"
        And  I add "3ab65e1974dd4a1da3fceb2f7758a10c" into the inputfield with "authtoken"
        And   I click on the "Save" button
        When I wait for the element "//h5[text()='Twilio']" with in "3" seconds
        Then I expect that element text "Twilio" is visible

    Scenario: Validate the user is able to edit twilio account in MY Apps field
        When I wait for the element "//a[normalize-space()='Apps']" with in "3" seconds
        When I click on the linktext "Apps"
        And  I click on the button using "My Apps"
        When I click on element using title "Twilio"
        Then I wait on element "//h5[text()='Twilio']//parent::div//child::*[contains(@class,'fe fe-edit')]" for 2000ms to be visible
        When I click on the options "edit" under my apps "Twilio"
        And  I add "ACbc9bb92a97a248b73a6667728c38340a" into the inputfield with "accountsid"
        And  I add "29f7a60bf644137525459e56ff349701" into the inputfield with "authtoken"
        And  I click on the button with text "Update"
        Then I expect that element text "Twilio" is visible