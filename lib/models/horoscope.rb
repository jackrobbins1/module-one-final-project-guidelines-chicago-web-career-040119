class Horoscope < ActiveRecord::Base
  has_many :readings
  has_many :users, through: :readings
end
