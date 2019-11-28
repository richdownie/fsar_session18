require 'selenium-webdriver'
require 'webdrivers'
require 'cucumber'
require 'rspec'
require 'pry'
require 'httparty'
require 'watir'
require 'watir-performance'
require_relative '../page_objects/widgets_index_page'

Before do
  if ENV["BROWSER"]
    @browser = Watir::Browser.new ENV["BROWSER"].to_sym
  else
    @browser = Watir::Browser.new #Chrome is the default
  end
  @domain = 'https://fullstackautomationwithruby.com' || ENV["DOMAIN"]
  @widgets_index = WidgetsIndex.new(@browser, @domain)
end

After do
  @browser.quit
end