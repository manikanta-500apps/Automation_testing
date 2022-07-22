Feature: Callflow module

     Background: 
        When I click on the linktext "Call Flows"

            Scenario: Validate the user is able to add call flows
                When  I click on circular plus button
                And I add "Testing@Dailer" into the inputfield with contains "Enter call flow name"
                And  I click on the button using text "Save"
                Then I expect that element text "Testing@Dailer" is visible

            Scenario: Validate the user is able to edit call flow
                When  I click on "Edit" icon in a row
                And  I add "Automation@testing" into the inputfield with contains "Enter call flow name"
                And  I click on the button using text "Save"
                Then I expect that element text "Automation@testing" is visible

            Scenario: Validate the user is able to save the call flow with invalid data
                When I click on circular plus button
                And  I add "Automation@testing" into the inputfield with contains "Enter call flow name"
                And  I click on the button using text "Save"
                Then I expect that element text "Duplicate Entry" is visible

            Scenario: Validate the user is able to click the grid view
                When  I click on element using title "Add Call Flow"
                And  I click on circular plus button
                And  I add "Gridview" into the inputfield with contains "Enter call flow name"
                And  I click on the button using text "Save"
                Then I expect that element text "Gridview" is visible

            Scenario: Validate the user is able to edit the flow in grid view
                When I click on element using title "Add Call Flow"
                When I click on the element contains text "Gridview"
                When I click on "edit-3" icon
                And  I add "Newgridview" into the inputfield with contains "Enter call flow name"
                And  I click on the button using text "Save"
                Then I expect that element text "Newgridview" is visible

            Scenario: Validate the user is able to search callflow in pbxplus
                When I add "Newgridview" into the inputfield with contains "Search"
                Then I expect that element text "Newgridview" is visible

            Scenario: Validate the user is able to getting warning message if invalid data is searched
                When  I add "Newgridview1" into the inputfield with contains "Search"
                Then I expect that element text "No Results Found" is visible

            Scenario: Validate the user is able to search call flows in grid view
                When  I click on element using title "Add Call Flow"
                And  I add "Newgridview1" into the inputfield with contains "Search"

            Scenario: Validate the user is able to add the Business hours Node in callflow
                When  I click on circular plus button
                And  I add "Testing@Dailer" into the inputfield with contains "Enter call flow name"
                When I switch to the frame with web element "designer"
                When I click on the button using "Business Hours"
                When I click on the button using text "Save"
                Then I drag and drop from start to node using "circle" "1" "2"
                When I drag and drop element having class "nodeIconClass" by offset "100" and "-100" with "1"
                When I switch to the default page
                When I click on "call_flow" "Save" button
                Then I expect that element contains text "Testing@Dailer" is visible

            Scenario: Validate the user is able to add the Menu Node in callflow
                When I click on "Edit" icon in a row
                When I switch to the frame with web element "designer"
                When I click on the button using "Menu"
                When I select the "text" "vm-greeting.mp3" from the dropdown using label "Recorded Audio:"
                When I add "hello welcome to pbxplus" into the inputfield "Enter Greetings here..."
                When I click on element "container8" "ui-button-text" in slide out
                When I add "1" to the inputfield "[label='Input']"
                When I press the TAB
                When I press the "a"
                When I press the TAB
                When I press the ENTER
                When I click on element "container8" "ui-button-text" in slide out
                When I pass data "2" into the designer nodes "Input:  " with index number "2"
                When I press the TAB
                When I press the "b"
                When I press the TAB
                When I press the ENTER
                When I click on the button using text "Save"
                Then I drag and drop from start to node using "circle" "2" "3"
                When I drag and drop element having class "nodeIconClass" by offset "265" and "8" with "2"
                When I switch to the default page
                When I click on "call_flow" "Save" button
                Then I expect that element contains text "Testing@Dailer" is visible

            Scenario: Validate the user is able to add the Pin Node in callflow
                When  I click on "Edit" icon in a row
                When I switch to the frame with web element "designer"
                When I click on the button using "PIN"
                When I wait for the element "//*[contains(@placeholder,'Enter the message you want your callers to listen to.')]" with in "3" seconds
                When I add "Press enter the pin" into the inputfield "Enter the message you want your callers to listen to."
                When I press the TAB
                When I press the "654"
                When I click on the button using text "Save"
                When I drag and drop element having class "nodeIconClass" by offset "356" and "90" with "3"
                Then I drag and drop from start to node using "circle" "3" "4"
                When I switch to the default page
                When I click on "call_flow" "Save" button
                Then I expect that element contains text "Testing@Dailer" is visible

            Scenario: Validate the user is able to add the Gather Node in callflow
                When  I click on "Edit" icon in a row
                When I switch to the frame with web element "designer"
                When I click on the button using "Gather"
                When I add "please provide your details" into the inputfield with contains "Ask for number"
                When I click on the linktext "Output"
                When I add "please enter output variable" into the inputfield with Gather output "//input[@value='gather_output']"
                When I click on the button using text "Save"
                When I drag and drop element having class "nodeIconClass" by offset "119" and "90" with "4"
                Then I drag and drop from start to node using "circle" "4" "5"
                When I switch to the default page
                When I click on "call_flow" "Save" button
                Then I expect that element contains text "Testing@Dailer" is visible

            Scenario: Validate the user is able to add the Call Forward Node in callflow
                When  I click on "Edit" icon in a row
                When I switch to the frame with web element "designer"
                When I click on the button using "Call Forward"
                When I click on the button using text "Save"
                When I drag and drop element having class "nodeIconClass" by offset "167" and "309" with "5"
                Then I drag and drop from start to node using "circle" "5" "6"
                When I switch to the default page
                When I click on "call_flow" "Save" button
                Then I expect that element contains text "Testing@Dailer" is visible

            Scenario: Validate the user is able to add the Dial By Name Node in callflow
                When  I click on "Edit" icon in a row
                When I switch to the frame with web element "designer"
                When I click on the button using "Dial By Name"
                When I add "please provide your details" into the inputfield with contains "Please enter text to play greetings for the caller"
                When I click on the button using text "Save"
                And  I wait for "3" seconds
                And  I click on element contains "@class,'toolbar_content'" using tag name "div"
                And  I press the UPARROW
                When I drag and drop element having class "nodeIconClass" by offset "288" and "90" with "6"
                Then I drag and drop from start to node using "circle" "6" "7"
                When I switch to the default page
                When I click on "call_flow" "Save" button
                Then I expect that element contains text "Testing@Dailer" is visible

            Scenario: Validate the user is able to add the Text To Speech Node in callflow
                When I click on "Edit" icon in a row
                And I switch to the frame with web element "designer"
                When I click on the button using "Text To Speech"
                When I press the TAB
                When I press the TAB
                When I press the "{{output}}"
                When I click on the button using text "Save"
                When I drag and drop element having class "nodeIconClass" by offset "138" and "79" with "7"
                Then I drag and drop from start to node using "circle" "7" "8"
                When I switch to the default page
                When I click on "call_flow" "Save" button
                Then I expect that element contains text "Testing@Dailer" is visible

            Scenario: Validate the user is able to add the Play Audio Node in callflow
                When  I click on "Edit" icon in a row
                When I switch to the frame with web element "designer"
                When I click on the button using "Play Audio"
                When I select the "text" "vm-greeting.mp3" from the dropdown using label "Recorded Audio:"
                When I click on the button using text "Save"
                When I drag and drop element having class "nodeIconClass" by offset "464" and "79" with "8"
                Then I drag and drop from start to node using "circle" "5" "9"
                When I switch to the default page
                When I click on "call_flow" "Save" button
                Then I expect that element contains text "Testing@Dailer" is visible

            Scenario: Validate the user is able to add the Voicemail Node in callflow
                When  I click on "Edit" icon in a row
                And I switch to the frame with web element "designer"
                When I click on the button using "Voicemail"
                When I click on the button using text "Save"
                When I drag and drop element having class "nodeIconClass" by offset "523" and "79" with "9"
                Then I drag and drop from start to node using "circle" "9" "10"
                When I switch to the default page
                When I click on "call_flow" "Save" button
                Then I expect that element contains text "Testing@Dailer" is visible

            Scenario: Validate the user is able to add the Conference Node in callflow
                When  I click on circular plus button
                And  I add "NewNodes" into the inputfield with contains "Enter call flow name"
                When I switch to the frame with web element "designer"
                When I click on the button using "Conference"
                When I click on the button using text "Save"
                When I drag and drop element having class "nodeIconClass" by offset "359" and "79" with "2"
                Then I drag and drop from start to node using "circle" "8" "6"
                When I switch to the default page
                When I click on "call_flow" "Save" button
                Then I expect that element contains text "NewNodes" is visible

            Scenario: Validate the user is able to add the Rest Node in callflow
                When  I click on "Edit" icon in a row
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
                When I drag and drop element having class "nodeIconClass" by offset "100" and "10" with "5"
                Then I drag and drop from start to node using "circle" "13" "18"
                When I switch to the default page
                When I click on "call_flow" "Save" button
                Then I expect that element contains text "NewNodes" is visible