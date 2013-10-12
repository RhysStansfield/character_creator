require './name_age'
require './input_tools'

include(PersonCreator, InputTools)

def start
  puts 'Hi there, do you want to create a character?'
  yes_or_no
end

def yes_or_no
  yes_no = user_input.downcase
  return gets_name unless yes_no == 'no'
  start_again
end

def start_again
    puts 'Oh that\'s a shame, are you sure?'
    user_start = user_input.downcase
    return gets_name if user_start == 'no'
    puts 'Well I\'ll see you soon then!'
end

start