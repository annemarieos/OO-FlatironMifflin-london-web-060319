require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
chris = Manager.new("Chris", 29, "Finance")
amos = Employee.new("Amos", 25, 90000, chris)

binding.pry
puts "done"
