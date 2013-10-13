class Character

  attr_reader :sex, :name, :age

  def initialize sex, name, age
    @sex = sex
    @name = name
    @age = age
  end

  def stats
    "Your character is #{@sex}, their name is #{@name} and their age is #{@age}."
  end

end

class Mage < Character

end