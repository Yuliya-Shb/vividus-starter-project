Scenario: Sign Up
Meta:
    @layout desktop

Given I am on the main application page
When I click on element located `By.xpath(//a[text()="Sign up"])`
Then an element by the xpath '//form[@id="signup"]' exists
           
When I enter `<userEmail>` in field located `By.xpath(//input[@name="email"])`
When I click on element located `By.xpath(//input[@id="signup-submit"])`
When I wait until element located `By.xpath(//div[@id='root'])` appears
Then an element by the xpath '//form[@id="form-sign-up"]' exists

When I wait until element located `By.xpath(//form[@id='form-sign-up'])` appears
When I enter `<userName>` in field located `By.xpath(//input[@id="displayName"])`
When I enter `<userPassword>` in field located `By.xpath(//input[@id="password"])`
When I click on an element by the xpath '//button[@id="signup-submit"]'

Examples:
|userEmail						   |userName				   |userPassword							|
|#{generate(Internet.EmailAddress)}|#{generate(Name.firstName)}|#{generate(regexify '[abcdefghigk]{8}')}|