Given /I am on the fsar widgets page/ do
  @widgets_index.visit
end

Given /I measure the performance of the widgets page "(.*)" times/i do |number|
  number.to_i.times do
    @widgets_index.visit
    load_secs = @browser.performance.summary[:response_time].to_f / 1000
    dom_processing = @browser.performance.summary[:dom_processing].to_f / 1000
    puts "Load Time: #{sprintf "%.2f", load_secs} seconds."
    puts "Dom Processing Time: #{sprintf "%.2f", dom_processing} seconds."
    # puts @browser.performance
  end
end
