require_relative '../config/environment'
require 'rest-client'
require 'json'
require 'pry'
require 'zodiac'
require 'date'


def get_name_from_user
  puts "Please enter your name"
  gets.chomp
end

def get_birthdate_from_user
  puts "Please enter your birthdate as" Date.new("YYYY/MM/DD").zodiac_sign
  gets.chomp
end

def get_sign_for_user
  zsign = Date.new().zodiac_sign

  puts "Your Zodiac sign is #{zsign}"

end

binding.pry

def whoami?
  User.name
end

# def change_user
#
# end

#puts "HELLO WORLD"
