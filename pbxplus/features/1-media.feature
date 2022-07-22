Feature: Media module

    Scenario: Validate the user is able to upload mp3 audio file
        When I click on the linktext "Calls Media"
        when I click on the button using text "Add Media"
        # And  I click on the linktext "Add Media"
        And  I upload a file "Telugumusic.mp3" in "pbxplus" app using class "file-input"
        And  I click on the button into "//span[@class='fe fe-x']"
        And  I click on the button into "//i[@class='fe fe-refresh-cw']"
        When I wait for the element "//span[text()=' Found ']" with in "5" seconds
        Then I expect that element text "File Name" is visible

    Scenario: Validate the user is able to search the uploaded audio file
        When I click on the linktext "Calls Media"
        When I add "telugu" into the inputfield "Search with file name"
        When I wait for the element "//span[text()=' Found ']" with in "5" seconds
        Then I expect that element text "File Name" is visible

    Scenario: Validate the user is able to search the uploaded file with invalid audio file
        When I click on the linktext "Calls Media"
        When I add "Nofile" into the inputfield "Search with file name"
        Then I expect that element text "No media found" is visible