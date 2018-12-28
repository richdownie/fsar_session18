Before do
  @browser = Watir::Browser.new #Chrome is the default
  #You can try these other browsers
  # @browser = Watir::Browser.new :firefox
  # @browser = Watir::Browser.new :internet_explorer
  # @browser = Watir::Browser.new :edge

    @domain = 'http://localhost:3000'
      # @domain = 'https://fullstackautomationwithruby.com'
end

After do
  @browser.quit
end
