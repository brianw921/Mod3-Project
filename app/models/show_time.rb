class ShowTime < ApplicationRecord
  belongs_to :show_room
  belongs_to :movie
end
