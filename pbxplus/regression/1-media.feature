Feature: Media module

    Scenario: Validate the user is able to upload file other than mp3 file
        When I click on the linktext "Calls Media"
        When I wait for the element "//a[normalize-space()='Add Media']" with in "3" seconds
        When I click on the linktext "Add Media"
        And  I upload a file "BulkDS50.csv" in "pbxplus" app using class "file-input"
        Then I expect that element text "Upload your file" is visible

    Scenario: Validate the user is able to upload mp3 file more than 5mb
        When I click on the linktext "Calls Media"
        When I wait for the element "//a[normalize-space()='Add Media']" with in "3" seconds
        When I click on the linktext "Add Media"
        And  I upload a file "file_example_MP3_5MG.mp3" in "pbxplus" app using class "file-input"
        Then I expect that element text "Upload your file" is visible

    Scenario: Validate the user is able to upload mp3 audio file
        When I click on the linktext "Calls Media"
        When I wait for the element "//a[normalize-space()='Add Media']" with in "3" seconds
        When I click on the linktext "Add Media"
        And I upload a file "Telugumusic.mp3" in "pbxplus" app using class "file-input"
        Then I expect that element text "File Name" is visible

    Scenario: Validate the user is able to search the uploaded audio file
        When I click on the linktext "Calls Media"
        When I add "telugu" into the inputfield "Search with file name"
        Then I expect that element text "File Name" is visible

    Scenario: Validate the user is able to search the uploaded file with invalid audio file
        When I click on the linktext "Calls Media"
        When I add "Nofile" into the inputfield "Search with file name"
        Then I expect that element text "No media found" is visible