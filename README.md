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

Obs: [More possible configs](https://www.rubydoc.info/github/jnicklas/capybara/Capybara.configure)

## Using Capybara's DSL

[capybara cheat sheet](https://gist.github.com/zhengjia/428105)

- Navigation is done using `visit "<URL>"`
- [Actions](https://rubydoc.info/github/teamcapybara/capybara/master/Capybara/Node/Actions):
  - `fill_in [locator], with: "value"`: locator can be the  name, id, test_id attribute, placeholder, or label text
  - `click_on [locator]` or `click_button [locator]`
  - `choose [locator]`
  - `check [locator]`
  - `select "Option", from: [locator]`
- [Finders](https://rubydoc.info/github/teamcapybara/capybara/master/Capybara/Node/Finders):
  - `find`
  - `find_link`
  - `find_button`
- [Querying](https://rubydoc.info/github/teamcapybara/capybara/master/Capybara/Node/Matchers):
  - `page.has_selector?('table tr')`
  - `page.has_selector?(:xpath, './/table/tr')`
  - `page.has_xpath?('.//table/tr')`
  - `page.has_css?('table tr.foo')`
  - `page.has_content?('foo')`
