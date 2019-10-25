class ShowRoomSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :id, :num_of_seats
  has_many :show_times
  has_many :movies, through: :show_rooms
end
