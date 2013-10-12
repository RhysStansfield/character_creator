class Character

  attr_reader :name, :age

  def initialize name, age
    @name = name
    @age = age
  end

  def stats
    "Your characters name is #{@name} and their age is #{@age}."
  end
end