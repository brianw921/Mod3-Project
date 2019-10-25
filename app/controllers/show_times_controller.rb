class ShowTimesController < ApplicationController

    def index 
        show_times = ShowTime.all
        options = {
            include: [ :show_room, :movie]
          }
          render json:  ShowTimeSerializer.new( show_times, options)
    end

    def create 
        show_time = ShowTime.create(show_time_params)
        render json: ShowTimeSerializer.new(show_time)
    end
    
    def destroy
    show_time = ShowTime.find(params[:id])
    show_time.destroy 
    render json: {message: "destroyed"}
    end 

    private

    def show_time_params
        params.permit(:day, :movie_id , :show_room_id, :show_time)
    end
end
