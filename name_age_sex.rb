require './input_tools'
require './character'

include(InputTools)

module CharacterCreator

  def gets_sex
    puts "Okay, what sex is your character?  (M)ale or (F)emale?"
    sex = user_input.downcase
    character_sex = char_sex(sex)
    check_sex(character_sex)
  end

  def gets_name sex
    puts "What's your characters name?"
    name = user_input.capitalize
    check_name(sex, name)
  end

  def gets_age sex, name
    puts "What is your characters age?"
    age = user_input
    check_age(sex, name, age)
  end

  def check_sex sex
    puts "So your character is #{sex}?"
    sex_check = user_input.downcase
    return sex_fail if sex_check == 'no'
    gets_name(sex)
  end

  def check_name sex, name
    puts "So your characters name is #{name}, yes?"
    name_check = user_input.downcase
    return name_fail(sex) if name_check == 'no'
    gets_age(sex, name)
  end

  def check_age sex, name, age
    puts "Okay, your characters age is #{age}?"
    age_check = user_input.downcase
    return age_fail(sex, name) if age_check == 'no'
    success(sex, name, age)
  end

  def sex_fail
    puts 'Oh dear, lets try that again then...'
    gets_sex
  end

  def name_fail sex
    puts 'Oh dear, lets sort that out, please enter your characters name again:'
    gets_name(sex)
  end

  def age_fail sex, name
    puts 'Ooopsy, lets fix that, please enter it again:'
    gets_age(sex, name)
  end

  def char_sex sex
    return 'male' if sex.match(/\Am|\Amale|\Ama|\Amal/)
    return 'female' if sex.match(/\Af|\Afe|\Afem|\Afema(le)/)
    puts "Ooops, I did't understand that, try again please!"
    gets_sex
  end

  def success sex, name, age
    puts "Great!  Glad to know that's all sorted!"
    puts "I'm just setting your character up for you..."
    character = Mage.new(sex, name, age)
    return puts character.stats
  end

end
