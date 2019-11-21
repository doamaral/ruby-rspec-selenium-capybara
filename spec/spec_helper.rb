RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.before(:all) do
    @driver = Selenium::WebDriver.for :firefox
    target_size = Selenium::WebDriver::Dimension.new(1024, 768)
    @driver.manage.window.size = target_size
    @driver.manage.timeouts.implicit_wait = 5
    @driver.manage.timeouts.page_load = 15
  end

  config.after(:all) do
      @driver.quit
  end
end