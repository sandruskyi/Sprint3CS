require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.default_driver = :selenium_chrome

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

