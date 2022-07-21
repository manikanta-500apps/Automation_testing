Feature: List Module
      Background: 
      When I click on the linktext from "Lists"

       
         Scenario: Validate the user can able to create a list
           When I click on the linktext from "Add List"
           And  I can add "naresh" into the inputfield "List Name"
           And  I click on the create list "Create List" button   
           Then I show that element text "naresh" is visible 
       
         Scenario: Validate the user can able to create a list
           When I click on the linktext from "Add List"
           And  I can add "naresh" into the inputfield "List Name"
           And  I click on the create list "Create List" button   
           Then I show that element text "naresh" is visible 

         Scenario: Validate the user can able to edit list
           when I click on the icon "Edit" button
           And  I can add "mani" into the inputfield "List Name"
           And  I click on the create list "Update List" button   
           Then I show that element text "mani" is visible 

         Scenario: Validate the user can able to Delete a list
           when I click on the icon "Delete" button
           And  I click on the list using "Confirm" button
           Then I expect that element with text "mani" does not exist "yes"

         Scenario: Scenario: Validate the user can able to Delete a contact from the list
           When I click on the linktext from "Domain Search"
           when I can add "hike.com" into the inputfield "Enter Domain Name (eg: 500apps.com)"
           And  I click on the list using "Domain Search" button
           When I wait for the element "//*[contains(text(),'Search Results')]" with in "10" seconds
           When I click on the linktext from "Save"
           And  I click on the linktext "Create New"
           When I pass data "deletecontact" into the text field in slide out "modal-add-to-list-domain-search___BV_modal_content_" using placeholder "List Name"
           And  I click on "Add to List" label "Create List" button with index number "4"
           And  I click on the button using text "Save"
           And  I refresh the page
           When I click on the linktext from "Lists"
           And  I click on the linktext from "deletecontact"
           Then I show that element text "Domain Search" is visible
           When I click on "Delete" icon in contacts
           And  I click on the list using "Confirm" button
           Then I show that element text "No Contacts Found!" is visible
           When I click on the icon "Delete" button
           And  I click on the list using "Confirm" button
           Then I expect that element with text "deletecontact" does not exist "yes"
           when I click on the icon "Edit" button
           And  I can add "mani" into the inputfield "List Name"
           And  I click on the create list "Update List" button   
           Then I show that element text "mani" is visible 