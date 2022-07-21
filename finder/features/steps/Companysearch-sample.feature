Feature: Company Search module
        Background:
            When I click on the linktext with "Company Search"
    

                Scenario: Validate the user can able to get the results for selected industry
                   When I click on the element contains from "Please select industry"
                   And  I click on the element contains from "Art And Entertainment"
                   And  I click on the companysearch using text "Search" button
                   And  I wait for the element "//a[@class='cursor-pointer text-secondary mr-4']" with in "10" seconds
                   When I scroll till the page up
                   Then I show that element text "Art And Entertainment" is visible