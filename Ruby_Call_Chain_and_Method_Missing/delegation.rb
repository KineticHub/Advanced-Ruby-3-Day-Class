require_relative 'tax_calculator'
require 'forwardable'

class Invoice
  extend Forwardable

  def_delegators :@tax_calc, :tax_country, :tax_state

  def initialize(options)
    options[:tax_state] = 'WA'
    options[:tax_country] = 'USA'
    @tax_calc = TaxCalculator.new(options)
  end

  def total_amount
    @tax_calc.total_amount
  end

  def tax_amount_owed
    @tax_calc.tax_amount_owed
  end

  # def respond_to? (name)
  #   return true if should_call_tax_calc? name
  #   super(name)
  # end
  #
  # # could do logic here to decide
  # def should_call_tax_calc?(name)
  #   @tax_calc.methods
  # end

  def method_missing (name, *args, &block)
    @tax_calc.send(name, *args, &block)
  end

end