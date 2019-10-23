class ShowTime < ApplicationRecord
  belongs_to :show_room
  belongs_to :movie
  validates :show_time , presence: true
end
