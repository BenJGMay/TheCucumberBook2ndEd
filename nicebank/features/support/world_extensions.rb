module KnowsTheDomain
  def my_account
    @myaccount ||= Account.new
  end

  def cash_slot
    @cash_slot ||= Cashslot.new
  end

  def teller
    @teller ||= Teller.new(cash_slot)
  end
end

World(KnowsTheDomain)
