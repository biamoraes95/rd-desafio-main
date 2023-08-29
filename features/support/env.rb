require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require 'rspec'
require 'httparty'


require_relative "helpers"

World(Helpers)

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 10
    config.app_host = "https://opensource-demo.orangehrmlive.com"
end
