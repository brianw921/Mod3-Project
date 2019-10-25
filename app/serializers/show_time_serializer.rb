class ShowTimeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :movie_id ,:show_room_id ,:day, :show_time
 
  belongs_to :movie
  belongs_to :show_room
end
