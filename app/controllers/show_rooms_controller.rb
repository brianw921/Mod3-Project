class ShowRoomsController < ApplicationController

    def index
        show_rooms = ShowRoom.all 
        options = {
      include: [ :show_times, :movies]
    }
    render json:  ShowRoomSerializer.new( show_rooms, options)
    end

    def show 
        show_room = ShowRoom.find(params[:id])
        options = {
        include: [:movies, :show_times]
    }
    render json:  ShowRoomSerializer.new( show_room, options)
    end

    def create 
        show_room = ShowRoom.create(show_room_params)
        render json: show_room
    end
    private

    def show_room_params
        params.permit(:num_of_seats)
    end
end
