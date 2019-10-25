class ShowRoom < ApplicationRecord
    has_many :show_times, dependent: :destroy
    has_many :movies, through: :show_times
    validates :num_of_seats, presence: true
end
