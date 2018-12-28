class WidgetsIndex

  def initialize(browser, domain)
    @browser = browser
    @domain = domain
  end

  def visit
    @browser.goto(@domain + '/widgets')
  end

  def new_widget
    @browser.link text: 'New Widget'
  end
end
