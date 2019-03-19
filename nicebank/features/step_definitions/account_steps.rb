Given(/^my account has been credited with \$(\d+)$/) do |amount|
my_account.credit(amount)
#sleep(10)
eventually { expect(my_account.reload.balance). to eq(amount),
 "Expected the balance to be #{amount} but it was #{my_account.balance}"}
end

Then("the balance of my account should be ${int}") do |amount|
   eventually { expect(my_account.reload.balance). to eq(amount),
    "Expected the balance to be #{amount} but it was #{my_account.balance}"}
end
