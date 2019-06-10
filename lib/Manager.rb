class Manager

  attr_reader :name, :age, :department
  attr_accessor :employees
  @@all = []

  def initialize(name, age, department)
    @name = name
    @age = age
    @department = department
    @@all << self
  end

  def employees
    Employee.all.select { |employee| employee.manager == self }
  end
  #chris.employees

  def self.all
    @@all
  end

  def self.all_departments
    self.all.map { |manager| manager.department }
  end
  #Manager.all_departments




  # def employees
  #   Employee.all.select {|employee| employee.manager == self}
  # end
  #




end
