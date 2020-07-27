require 'date'

module DaysOfMarch
  def self.days_since_march_first
  	march_first = Date.new(2020, 3, 1)
  	(Date.today - march_first).to_i
  end

  def self.ordinal_indicator(number)
    right_digit = number % 10
    case right_digit
    when 1
      'st'
    when 2
      'nd'
    when 3
      'rd'
    else
      'th'
    end    
  end

  def self.today
    "Today is the #{days_since_march_first}#{ordinal_indicator(days_since_march_first)} day of March."
  end
end