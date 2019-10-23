class ShowTimesController < ApplicationController

    def index 
        show_times = ShowTime.all
        render json: show_times
    end

    def create 
        show_time = ShowTime.create(show_time_params)
        render json: show_time
    end
    

    private

    def show_time_params
        params.permit(:movie_id , :show_room_id, :show_time)
    end
end
