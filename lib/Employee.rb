require "pry"

class Employee

  attr_reader :name, :age, :salary, :manager
  @@all = []

  def initialize(name, age, salary, manager)
    @name = name
    @manager = manager
    @age = age
    @@all << self
    @salary = salary
  end

  def self.all
    @@all
  end

  def manager_name
    manager.name
  end

  def department
    manager.department
  end

  def self.paid_over(salary)
    @@all.select { |employee| employee.salary > salary }
  end

  def self.find_by_department(department)
    Employee.all.each do |employee|
      if employee.department == department
        return employee
      end
    end
    nil
  end
  #Employee.find_by_department("Banking")

end
