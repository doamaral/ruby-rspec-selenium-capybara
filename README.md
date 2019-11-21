# ruby-rspec-selenium-capybara
Incrementing test project with Capybara. Although Capybara is not required to automate ui tests, it has a greate DSL that might boost our experience scripting automate tests.

## Initial project structure
- Same basic steps from the [`ruby-rspec-selenium` Project](https://github.com/doamaral/ruby-rspec-selenium) until the `Writing first test script` Step
- Add `require 'capybara/rspec'` and `config.include Capybara::DSL` to the `spec_helper.rb` file
- Add basic Browser configurations through `Capybara.configure do |config|`
```ruby
Capybara.configure do |config|
    config.default_driver = :selenium #Firefox default driver
    config.default_max_wait_time = 5 #implicit wait
    config.app_host = "http://the-internet.herokuapp.com"
end
```
## Using Capybara's DSL
 - Navigation is done using `visit "<URL>"`