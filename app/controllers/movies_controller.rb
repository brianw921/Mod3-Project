class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies
  end 

  def create 
    
    movie =  Movie.create(movie_params)
   render json: movie

  end 

  private 

  def movie_params
    params.permit(:title, :poster, :actors, :director, :released, :genre, :rated, :run_time, :plot, :production, :a_type)
  end 

end
