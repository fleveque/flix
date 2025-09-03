class MoviesController < ApplicationController
  before_action :find_movie, only: [ :show, :edit ]

  def index
    @movies = Movie.all
  end

  def show
  end

  def edit
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
