Feature: Callflow module

    Scenario: Validate the user is able to save without data
        When I click on the linktext "Call Flows"
        And  I click on circular plus button
        And  I click on the button using text "Save"
        Then I expect validation message "Please fill in this field." for empty dropdown "form-control" matched

    Scenario: Validate the user is able to save the callflow by giving more characters in Name field
        When I click on the linktext "Call Flows"
        And  I click on circular plus button
        And  I add "AutomationAutomationAutomationAutomationAutomationa" into the inputfield with contains "Enter call flow name"
        And  I click on the button using text "Save"
        Then I expect that element text "Data too long" is visible

    Scenario: Validate the user is able to save the callflow by giving boundary value characters in Name field
        When I click on the linktext "Call Flows"
        And  I click on circular plus button
        And  I add "AutomationAutomationAutomationAutomationAutomation" into the inputfield with contains "Enter call flow name"
        And  I click on the button using text "Save"
        Then I expect that element text "AutomationAutomationAutomationAutomationAutomation" is visible

    Scenario: Validate the user is able to save the callflow by giving sufficient characters in Name field
        When I click on the linktext "Call Flows"
        And  I click on circular plus button
        And  I add "AutomationAutomationAutomationAutomationAutomatio" into the inputfield with contains "Enter call flow name"
        And  I click on the button using text "Save"
        And  I pause for 2000ms
        Then I expect that element text "AutomationAutomationAutomationAutomationAutomatio" is visible

    Scenario: Validate the user is able to add call flows
        When I click on the linktext "Call Flows"
        And  I click on circular plus button
        And  I add "Testing@Dailer" into the inputfield with contains "Enter call flow name"
        And  I click on the button using text "Save"
        Then I expect that element text "Testing@Dailer" is visible

    Scenario: Validate the user is able to edit call flows
        When I click on the linktext "Call Flows"
        And  I click on "Edit" icon in a row
        And  I add "Automation@testing" into the inputfield with contains "Enter call flow name"
        And  I click on the button using text "Save"
        Then I expect that element text "Automation@testing" is visible

    Scenario: Validate the user is able to save the call flow with invalid data
        When I click on the linktext "Call Flows"
        And  I click on circular plus button
        And  I add "Automation@testing" into the inputfield with contains "Enter call flow name"
        And  I click on the button using text "Save"
        Then I expect that element text "Duplicate Entry" is visible

    Scenario: Validate the user is able to click the grid view
        When I click on the linktext "Call Flows"
        And  I click on element using title "Grid view"
        And  I click on circular plus button
        And  I add "Gridview" into the inputfield with contains "Enter call flow name"
        And  I click on the button using text "Save"
        Then I expect that element text "Gridview" is visible

    Scenario: Validate the user is able to edit the flow in grid view
        When I click on the linktext "Call Flows"
        And  I click on element using title "Grid view"
        When I click on the element contains text "Gridview"
        When I click on "edit-3" icon
        And  I add "Newgridview" into the inputfield with contains "Enter call flow name"
        And  I click on the button using text "Save"
        Then I expect that element text "Newgridview" is visible

    Scenario: Validate the user is able to search callflow in pbxplus
        When I click on the linktext "Call Flows"
        And I add "Newgridview" into the inputfield with contains "Search"
        Then I expect that element text "Newgridview" is visible

    Scenario: Validate the user is able to getting warning message if invalid data is searched
        When I click on the linktext "Call Flows"
        And  I add "Newgridview1" into the inputfield with contains "Search"
        Then I expect that element text "No Results Found" is visible

    Scenario: Validate the user is able to search call flows in grid view
        When I click on the linktext "Call Flows"
        And I click on element using title "Grid view"
        And I add "Newgridview1" into the inputfield with contains "Search"

    Scenario: Validate the user is able to add the Business hours Node in callflow
        When I click on the linktext "Call Flows"
        And  I click on circular plus button
        And  I add "Testing@Dailer" into the inputfield with contains "Enter call flow name"
        When I switch to the frame with web element "designer"
        When I click on the button using "Business Hours"
        When I click on the button using text "Save"
        Then I drag and drop from start to node using "circle" "1" "2"
        When I drag and drop element having class "nodeIconClass" by offset "100" and "-100" with "2"
        When I switch to the default page
        When I click on "call_flow" "Save" button
        Then I expect that element contains text "Testing@Dailer" is visible

    Scenario: Validate the user is able to add the Menu Node in callflow
        When I click on the linktext "Call Flows"
        And  I click on "Edit" icon in a row
        When I switch to the frame with web element "designer"
        When I click on the button using "Menu"
        When I select the "text" "vm-greeting.mp3" from the dropdown using label "Recorded Audio:"
        When I add "hello welcome to pbxplus" into the inputfield "Enter Greetings here..."
        When I click on element "container7" "ui-button-text" in slide out
        When I add "1" to the inputfield "[label='Input']"
        When I press the TAB
        When I press the "a"
        When I press the TAB
        When I press the ENTER
        When I click on element "container7" "ui-button-text" in slide out
        When I pass data "2" into the designer nodes "Input:  " with index number "2"
        When I press the TAB
        When I press the "b"
        When I press the TAB
        When I press the ENTER
        When I click on the button using text "Save"
        When I drag and drop element having class "nodeIconClass" by offset "100" and "10" with "3"
        Then I drag and drop from start to node using "circle" "3" "5"
        When I switch to the default page
        When I click on "call_flow" "Save" button
        Then I expect that element contains text "Testing@Dailer" is visible

    Scenario: Validate the user is able to add the Pin Node in callflow
        When I click on the linktext "Call Flows"
        And  I click on "Edit" icon in a row
        When I switch to the frame with web element "designer"
        When I click on the button using "Pin"
        When I wait for the element "//*[contains(@placeholder,'Enter Greetings here...')]" with in "3" seconds
        When I add "Press enter the pin" into the inputfield "Enter Greetings here..."
        When I press the TAB
        When I press the "654"
        When I click on the button using text "Save"
        When I drag and drop element having class "nodeIconClass" by offset "50" and "160" with "4"
        Then I drag and drop from start to node using "circle" "6" "8"
        When I switch to the default page
        When I click on "call_flow" "Save" button
        Then I expect that element contains text "Testing@Dailer" is visible

    Scenario: Validate the user is able to add the Gather Node in callflow
        When I click on the linktext "Call Flows"
        And  I click on "Edit" icon in a row
        When I switch to the frame with web element "designer"
        When I click on the button using "Gather"
        When I add "please provide your details" into the inputfield with contains "Please enter input digits"
        When I click on the linktext "Output"
        When I add "output" into the inputfield with contains "Please enter output variable"
        When I click on the button using text "Save"
        When I drag and drop element having class "nodeIconClass" by offset "400" and "160" with "5"
        Then I drag and drop from start to node using "circle" "7" "11"
        When I switch to the default page
        When I click on "call_flow" "Save" button
        Then I expect that element contains text "Testing@Dailer" is visible

    Scenario: Validate the user is able to add the Findme Node in callflow
        When I click on the linktext "Call Flows"
        And  I click on "Edit" icon in a row
        When I switch to the frame with web element "designer"
        When I click on the button using "Findme"
        When I click on the button using text "Save"
        When I drag and drop element having class "nodeIconClass" by offset "-50" and "280" with "6"
        Then I drag and drop from start to node using "circle" "9" "14"
        When I switch to the default page
        When I click on "call_flow" "Save" button
        Then I expect that element contains text "Testing@Dailer" is visible

    Scenario: Validate the user is able to add the Dial By Name Node in callflow
        When I click on the linktext "Call Flows"
        And  I click on "Edit" icon in a row
        When I switch to the frame with web element "designer"
        When I click on the button using "Dial By Name"
        When I click on the button using text "Save"
        When I drag and drop element having class "nodeIconClass" by offset "100" and "280" with "7"
        Then I drag and drop from start to node using "circle" "10" "17"
        When I switch to the default page
        When I click on "call_flow" "Save" button
        Then I expect that element contains text "Testing@Dailer" is visible

    Scenario: Validate the user is able to add the Text To Speech Node in callflow
        When I click on the linktext "Call Flows"
        And  I click on "Edit" icon in a row
        When I switch to the frame with web element "designer"
        When I click on the button using "Text To Speech"
        When I press the TAB
        When I press the TAB
        When I press the "{{output}}"
        When I click on the button using text "Save"
        When I drag and drop element having class "nodeIconClass" by offset "300" and "280" with "8"
        Then I drag and drop from start to node using "circle" "12" "21"
        When I switch to the default page
        When I click on "call_flow" "Save" button
        Then I expect that element contains text "Testing@Dailer" is visible

    Scenario: Validate the user is able to add the Play Audio Node in callflow
        When I click on the linktext "Call Flows"
        And  I click on "Edit" icon in a row
        When I switch to the frame with web element "designer"
        When I click on the button using "Play Audio"
        When I select the "text" "vm-greeting.mp3" from the dropdown using label "Recorded Audio:"
        When I click on the button using text "Save"
        When I drag and drop element having class "nodeIconClass" by offset "300" and "400" with "9"
        Then I drag and drop from start to node using "circle" "22" "23"
        When I switch to the default page
        When I click on "call_flow" "Save" button
        Then I expect that element contains text "Testing@Dailer" is visible

    Scenario: Validate the user is able to add the Voicemail Node in callflow
        When I click on the linktext "Call Flows"
        And  I click on "Edit" icon in a row
        When I switch to the frame with web element "designer"
        When I click on the button using "Voicemail"
        When I click on the button using text "Save"
        When I drag and drop element having class "nodeIconClass" by offset "500" and "400" with "10"
        Then I drag and drop from start to node using "circle" "13" "25"
        When I switch to the default page
        When I click on "call_flow" "Save" button
        Then I expect that element contains text "Testing@Dailer" is visible

    Scenario: Validate the user is able to add the Conference Node in callflow
        When I click on the linktext "Call Flows"
        And  I click on circular plus button
        And  I add "NewNodes" into the inputfield with contains "Enter call flow name"
        When I switch to the frame with web element "designer"
        When I click on the button using "Conference"
        When I click on the button using text "Save"
        When I drag and drop element having class "nodeIconClass" by offset "100" and "-100" with "2"
        Then I drag and drop from start to node using "circle" "1" "2"
        When I switch to the default page
        When I click on "call_flow" "Save" button
        Then I expect that element contains text "NewNodes" is visible

    Scenario: Validate the user is able to add the Rest Node in callflow
        When I click on the linktext "Call Flows"
        And  I click on "Edit" icon in a row
        When I switch to the frame with web element "designer"
        When I click on the button using "REST"
        When I press the TAB
        When I press the TAB
        When I press the TAB
        When I press the TAB
        When I press the "https://callflows.free.beeceptor.com"
        When I press the TAB
        When I press the TAB
        When I press the TAB
        When I press the "output"
        When I click on the button using text "Save"
        And  I wait for "3" seconds
        And  I click on element contains "@class,'toolbar_content'" using tag name "div"
        And  I press the UPARROW
        And  I press the UPARROW
        And  I press the UPARROW
        When I drag and drop element having class "nodeIconClass" by offset "100" and "10" with "3"
        Then I drag and drop from start to node using "circle" "3" "4"
        When I switch to the default page
        When I click on "call_flow" "Save" button
        Then I expect that element contains text "NewNodes" is visible