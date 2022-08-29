class AnimalsController < ApplicationController
before_action :set_animal, only: %i[ destroy show edit update ]
	
	def index
	@animals = Animal.all
	end

	def new
	@animal = Animal.new
	end

	def create
	@animal = Animal.new(animal_params)
	@animal.save
	redirect_to '/animals'
	end

	def show
	end

	def edit

	end

	def update
	@animal = Animal.new(animal_params)
	redirect_to '/animals'	
	end

	def destroy
	@animal.destroy
	redirect_to '/animals'
	end

	private

	def set_animal
	@animal = Animal.find(params[:id])
	end

	def animal_params
		params.require(:animal).permit(:name, :animal_type, :count)
	end
end
