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