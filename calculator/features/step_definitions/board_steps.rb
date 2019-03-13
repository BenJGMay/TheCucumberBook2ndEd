Given("a board like this:") do |table|
  @board = table.raw
end

When("player x plays in row {int}, column {int}") do |row, col|
  #row, col = row.to_i, col_to_i #This isn't needed as we capture integers
  @board[row][col] = 'x'
end

Then("the board should look like this:") do |expected_table|
  expected_table.diff!(@board)
end
