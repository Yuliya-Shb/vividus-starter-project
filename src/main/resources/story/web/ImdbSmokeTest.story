Scenario: Create account
Meta:
    @layout desktop
    @skip

Given I am on the main application page
When I click on an element with the text 'Sign In'
Then an element by the xpath '//div[@id="signin-options"]' exists

When I click on an element by the xpath '//a[@class="list-group-item create-account"]'
Then an element by the xpath '//form[@id="ap_register_form"]' exists

When I initialize the STORY variable `testUserEmail` with value `#{generate(Name.firstName)}`
When I enter `${testUserEmail}` in field located `By.xpath(//input[@name='customerName'])`
When I enter `${testUserEmail}@test-imbd.com` in field located `By.xpath(//input[@name='email'])`
When I initialize the STORY variable `testUserPass` with value `#{generate(regexify '[abcdefghigk]{8}')}`
When I enter `${testUserPass}` in field located `By.xpath(//input[@name='password'])`
When I enter `${testUserPass}` in field located `By.xpath(//input[@name='passwordCheck'])`
When I click on an element by the xpath '//input[@id="continue"]'
Then an element by the xpath '//div[@id='cvf-page-content']' exists

Scenario: Search film
Meta:
    @layout desktop
    @skip

Given I am on the main application page
When I enter `Person of Interest` in field located `By.xpath(//input[@id='suggestion-search'])`
When I wait until element located `By.xpath(//li[@id="react-autowhatever-1--item-0"])` appears
When I click on an element by the xpath '//li[@id="react-autowhatever-1--item-0"]/a'
Then an element with the tag 'h1' and text 'Person of Interest' exists

Scenario: Add to watchlist
Meta:
    @layout desktop
    @skip

Given I am on the main application page
When I click on an element with the text 'Sign In'
Then an element by the xpath '//div[@id="signin-options"]' exists

When I click on an element with the text 'Sign in with IMDb'
Then an element by the xpath '//div[@id="authportal-main-section"]' exists

When I enter `${userEmail}` in field located `By.xpath(//input[@name='email'])`
When I click on an element by the xpath '//input[@name='password']'
When I enter `${userPasword}` in field located `By.xpath(//input[@name='password'])`
When I click on an element by the xpath '//input[@id="signInSubmit"]'
When I enter `Person of Interest` in field located `By.xpath(//input[@id='suggestion-search'])`
When I wait until element located `By.xpath(//li[@id="react-autowhatever-1--item-0"])` appears
When I click on an element by the xpath '//li[@id="react-autowhatever-1--item-0"]/a'
When I click on an element with the text 'Add to Watchlist'
When I click on an element by the xpath '//div[@class="imdb-header__watchlist-button"]/a'
When I click on an element with the text 'Export this list'