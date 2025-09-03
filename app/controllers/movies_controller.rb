class MoviesController < ApplicationController
  before_action :find_movie, only: [ :show, :edit, :update ]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to @movie
  end

  def edit
  end

  def update
    @movie.update(movie_params)
    redirect_to @movie
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit([ :title, :description, :rating, :released_on, :total_gross ])
  end
end
