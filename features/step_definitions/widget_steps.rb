Given /I measure the performance of the widgets index page "(.*)" times/i do |number|
  number.to_i.times do
    @widgets_index.visit
    response_time = @browser.performance.summary[:response_time].to_f / 1000
    load_time = @browser.performance.summary[:dom_processing].to_f / 1000
    puts "#{ENV["BROWSER"]} Repsonse Time: #{sprintf "%.2f", response_time} seconds."
    puts "#{ENV["BROWSER"]} Load Time: #{sprintf "%.2f", load_time} seconds."
  end
end
