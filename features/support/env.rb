require 'ruby-debug'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'rspec/expectations'

Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium

Capybara.app_host = 'http://news.bbc.co.uk/sport'

World(Capybara)