class ShowRoomsController < ApplicationController

    def index
        show_rooms = ShowRoom.all 
        render json: show_rooms
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
