
require 'capybara/cucumber'
require 'capybara/dsl'

Capybara.default_driver = :selenium

module Helpers
	def without_resynchronize
		page.driver.options[:resynchronize] = false
		yield
		page.driver.options[:resynchronize] = true
	end
end
 
World(Capybara::DSL, Helpers)

require 'capybara/poltergeist' 
Capybara.register_driver :poltergeist do |app|
	Capybara::Poltergeist::Driver.new(app, {debug: false})
end

Capybara.javascript_driver = :poltergeist

