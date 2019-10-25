class MovieSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :id, :title, :poster, :actors, :director, :released, :genre, :rated, :run_time, :plot, :production, :a_type

  has_many :show_times, serialize: ShowTimeSerializer
  has_many :show_rooms, through: :show_times, serialize: ShowRoomSerializer
end
