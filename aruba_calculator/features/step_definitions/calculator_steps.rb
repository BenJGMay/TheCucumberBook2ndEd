Given(/^the input "([^"]*)"$/) do |input|
  write_file 'input.txt', input
end

When(/^the calculator is run$/) do
  run 'calculator input.txt'
end

Then(/^the output should be "([^"]*)"$/) do |output|
  expect(last_command_stopped).to have_output an_output_string_including(output)
end

When(/^the calculator is run with no input$/) do
  run 'calculator'
end

When(/^I enter the calculation "([^"]*)"$/) do |calculation|
  type calculation
end
