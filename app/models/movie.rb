class Movie < ApplicationRecord
    has_many :show_times, dependent: :destroy
    has_many :show_rooms, through: :show_times
end
