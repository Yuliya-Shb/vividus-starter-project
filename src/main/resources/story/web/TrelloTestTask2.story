Scenario: Sign In
Meta:
    @layout desktop

Given I am on the main application page
When I click on element located `By.xpath(//a[text()="Log in"])`
Then an element by the xpath '//form[@id="login-form"]' exists
           
When I enter `${registeredUserEmail}` in field located `By.xpath(//input[@name="user"])`
When I click on element located `By.xpath(//input[@id="login"])`
Then an element by the xpath '//form[@id="form-login"]' exists

When I enter `${registeredUserPassword}` in field located `By.xpath(//input[@id="password"])`
When I click on element located `By.xpath(//button[@id="login-submit"])`
When I wait until element located `By.xpath(//div[@class='home-container'])` appears
Then an element by the xpath '//div[@class="all-boards"]' exists