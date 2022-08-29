class MoviesController < ApplicationController
before_action :set_movie, only: %i[ show  update  destroy edit ]	
	def index
	@movies = Movie.all
	end

	def new
	@movie = Movie.new 
	end

	def create
		@movie = Movie.new(movie_params)
		@movie.save
		redirect_to '/movies'
	end

	def show
	end

	def update
		@movie.update(movie_params)
		redirect_to '/movies'
	end

	def edit
	end

	def destroy
		@movie.destroy
		redirect_to '/movies'
	end

	private

	def set_movie

		@movie = Movie.find(params[:id])

	end

	def movie_params
		params.require(:movie).permit(:name, :release_date, :rating)
		
	end

end
