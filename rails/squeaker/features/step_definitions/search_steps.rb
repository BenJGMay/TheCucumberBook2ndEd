When(/^I search for "([^"]*)"$/) do |query|
  visit('/search')
  fill_in('query', :with => query)
  click_button('Search')
end

Then(/^the results should be:$/) do |expected_results|
  # Wait until a matching element is found on the page
  expect(page).to have_css('ol.results li')
  results = [['content']] + page.all('ol.results li').map do |li|
    [li.text]
  end

  expected_results.diff!(results)
end

When(/^I enter for "([^"]*)" into the search field$/) do |query|
  visit('/search')
  fill_in('query', :with => query)
end
