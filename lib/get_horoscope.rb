require "pry"
require_relative "./models/reading.rb"


def get_horoscope

current_user = User.find_by name: @current_username

current_user_id = current_user.id

latest_horoscope = Horoscope.where("sign = :sign", { name: current_user.sign.downcase }).last

latest_horoscope_id = latest_horoscope.id

my_reading = Reading.create(user_id: current_user_id, horoscope_id: latest_horoscope_id)

my_reading


end


def find_horoscope

current_user = User.find_by name: "Michael"

#get user_id and horoscope_id for current user
#get all readings for the logged in user

current_user.horoscopes.map do |horoscopes|
  horoscopes(:description)
end
binding.pry


      # SELECT people.id, people.name FROM people
      # => [[1, 'David'], [2, 'Jeremy'], [3, 'Jose']]


  end
  # horoscope_array = Horoscope.pluck :horoscope_id
  # horoscope_array.each do |hscope| horoscope_id.colorize(:blue)
  # end
