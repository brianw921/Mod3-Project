class MoviesController < ApplicationController
  def index
    movies = Movie.all
    options = {
      include: [:show_times, :show_rooms]
    }

    render json: MovieSerializer.new(movies, options)
   
  end 

  

  def create 
    
    movie =  Movie.create(movie_params)
   render json: movie

  end 

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy 
    render json: {message: "destroyed"}
  end
  private 

  def movie_params
    params.permit(:title, :poster, :actors, :director, :released, :genre, :rated, :run_time, :plot, :production, :a_type)
  end 

end
