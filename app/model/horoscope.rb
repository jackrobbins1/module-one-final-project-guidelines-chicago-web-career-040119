class Horoscopes < ActiveRecord::Base
  has_many :readings
end
