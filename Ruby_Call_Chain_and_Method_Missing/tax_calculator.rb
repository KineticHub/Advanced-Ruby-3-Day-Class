class TaxCalculator

  def initialize(options)
    @amount_owed = options[:amount_owed]
    @amount_paid = options[:amount_paid]
    @tax_state = options[:tax_state]
    @tax_country = options[:tax_country]
  end

  def total_amount
    (@amount_owed + tax_amount_owed) - @amount_paid
  end

  def tax_amount_owed
    (@amount_owed * tax_rate).round(2)
  end

  def tax_rate
    # some crazy lookup based on state and country
    (state_tax_rate(@tax_state) + country_tax_rate(@tax_country)).round(2)
  end

  def state_tax_rate(state)
    0.05
  end

  def country_tax_rate(country)
    0.10
  end

end