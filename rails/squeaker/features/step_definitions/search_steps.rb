When(/^I search for "([^"]*)"$/) do |query|
  visit('/search')
  fill_in('query', :with => query)
  click_button('Search')
end

Then(/^the results should be:$/) do |table|
  results = [['content']] + page.all('ol.results li').map do |li|
    [li.text]
  end

  puts results.join("\n")
  pending
end
