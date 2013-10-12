include(input_tools)

module PersonCreator

  def gets_name
    puts 'Okay cool!  What\'s your name then?'
    name = user_input
    check_name(name)
  end

  def gets_age
    puts 'Awesome, that\'s your name sorted - what is your age?'
    age = user_input
    check_age(age)
  end

  def check_name(name)
    puts "So your name is #{name}, yes?"
    name_check = user_input.downcase
    return name_fail if name_check == 'no'
    gets_age
  end

  def check_age(age)
    puts "Okay, your age is #{age}?"
    age_check = user_input.downcase
    return age_fail if age_check == 'no'
    puts success
  end

  def name_fail
    puts 'Oh dear, lets sort that out, please enter your name:'
    new_name = user_input
    check_name(new_name)
  end

  def age_fail
    puts 'Ooopsy, lets fix that, please enter it again:'
    new_age = user_input
    check_age(new_age)
  end

  def success
    'Great!  Glad to know that\'s all sorted!'
  end

end
