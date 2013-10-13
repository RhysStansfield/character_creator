#!/usr/bin/env ruby
require './name_age_sex'
require './input_tools'

include(CharacterCreator, InputTools)

def start
  puts 'So, do you want to create a character?'
  yes_or_no
end

def yes_or_no
  yes_no = user_input.downcase
  return gets_sex unless yes_no == 'no'
  start_again
end

def start_again
    puts "Oh that's a shame, are you sure?"
    user_start = user_input.downcase
    return gets_sex if user_start == 'no'
    return "Well I'll see you soon then!"
end

puts
puts 'Hi there, welcome to my clearly amazing RPG style character creator!'
puts
start