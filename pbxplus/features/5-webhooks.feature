# Feature:Webhooks module

#     Scenario: Validate the user is able to click on setting icon for webhooks integration
#         When I click on "settings font-size-initial text-muted" symbol button
#         And I click on the linktext "Webhooks"
#         And I pass the data "https://api.qa.500apps.com/500apps/qa/webhook/handshake?url=https://smoke4.free.beeceptor.com" into the field using label text "Inbound Call Start Webhook URL"
#         When I click on "Inbound Call Start Webhook URL" label "Save" button with index number "4"
#         Then I expect that element text "//span[@role='status']" does not exist "no"
#         When I pass the data "https://api.qa.500apps.com/500apps/qa/webhook/handshake?url=https://smoke4.free.beeceptor.com" into the field using label text "Inbound Call End Webhook URL"
#         When I click on "Inbound Call End Webhook URL" label "Save" button with index number "3"
#         Then I expect that element text "//span[@role='status']" does not exist "no"
#         When I pass the data "https://api.qa.500apps.com/500apps/qa/webhook/handshake?url=https://smoke4.free.beeceptor.com" into the field using label text "Outbound Call Start Webhook URL"
#         When I click on "Outbound Call Start Webhook URL" label "Save" button with index number "3"
#         Then I expect that element text "//span[@role='status']" does not exist "no"
#         When I pass the data "https://api.qa.500apps.com/500apps/qa/webhook/handshake?url=https://smoke4.free.beeceptor.com" into the field using label text "Outbound Call End Webhook URL"
#         When I click on "Outbound Call End Webhook URL" label "Save" button with index number "3"
#         Then I expect that element text "//span[@role='status']" does not exist "no"

#     Scenario: Validate the user is able to delete webhooks field
#         When I click on "settings font-size-initial text-muted" symbol button
#         And  I click on the linktext "Webhooks"
#         When I click on "fe fe-x" optoin on card "Inbound Call Start Webhook URL" using index "1"
#         When I click on "fe fe-x" optoin on card "Inbound Call End Webhook URL" using index "1"
#         When I click on "fe fe-x" optoin on card "Outbound Call Start Webhook URL" using index "1"
#         When I click on "fe fe-x" optoin on card "Outbound Call End Webhook URL" using index "1"
#         Then I expect that element text "https://api.qa.500apps.com/500apps/qa/webhook/handshake?url=https://smoke4.free.beeceptor.com" does not exist "yes"
