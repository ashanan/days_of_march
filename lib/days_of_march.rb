require 'date'

def days_since_march_first
	march_first = Date.new(2020, 3, 1)
	(Date.today - march_first).to_i
end

puts days_since_march_first
