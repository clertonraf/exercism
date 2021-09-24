module SavingsAccount

  def self.interest_rate(balance)
    case balance
      when -Float::INFINITY...0 then -3.213
      when 0...1000 then 0.5
      when 1000...5000 then 1.621
      when 5000..Float::INFINITY then 2.475
      else 0
    end
  end

  def self.annual_balance_update(balance)
    balance * (1.0 + (self.interest_rate(balance)/100).abs)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    accumulated_balance = self.annual_balance_update(current_balance)
    year = 1
    while accumulated_balance < desired_balance
      year += 1
      accumulated_balance = self.annual_balance_update(accumulated_balance)
    end
    return year
  end
end
