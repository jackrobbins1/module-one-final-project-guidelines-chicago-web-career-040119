
require "pry"
require_relative "./models/reading.rb"



def get_my_horoscope
  #binding.pry
  current_user = User.find_by name: @current_username
  #binding.pry
  current_user_id = current_user.id
  #binding.pry
  #Horoscope.where(sign: 'aquarius').last

  #BESTTTTT
  latest_horoscope = Horoscope.where("sign = :sign", { sign: current_user.sign.downcase}).last

  latest_horoscope_id = latest_horoscope.id

  my_reading = Reading.create(user_id: current_user_id, horoscope_id: latest_horoscope_id)

  message = my_reading.horoscope.description + "\n"
  slow_print(message.colorize(:blue))
  #binding.pry
end


def find_horoscope

current_user = User.find_by name: "Michael"

#get user_id and horoscope_id for current user
#get all readings for the logged in user

current_user.horoscopes.map do |horoscope|
  horoscope.description
end

end


      # SELECT people.id, people.name FROM people
  def find_lucky_number

  current_user = User.find_by name: "Michael"

  current_user.horoscopes.map do |horoscopes|
    horoscope.lucky_number
  end.last

end

def find_color

  current_user = User.find_by name: "Michael"

  current_user.horoscopes.map do |horoscope|
    horoscope.color
  end.last

end

       # => [[1, 'David'], [2, 'Jeremy'], [3, 'Jose']]



  # horoscope_array = Horoscope.pluck :horoscope_id
  # horoscope_array.each do |hscope| horoscope_id.colorize(:blue)
  # end
