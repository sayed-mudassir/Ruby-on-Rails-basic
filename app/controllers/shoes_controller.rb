class ShoesController < ApplicationController
before_action :set_shoe, only: %i[show edit update destroy]

	def index
		@shoes = Shoe.all 
	end

	def new
		@shoe = Shoe.new
	end

	def create
		@shoe = Shoe.new(shoe_params)
		
		if	@shoe.save
			redirect_to '/shoes'
			flash[:success] = "The Shoe was created successfully"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @shoe.update(shoe_params)
			flash[:success] = "The Shoe was created successfully"
			redirect_to '/shoes'
		else
			render	'edit'
		end
	end

	def show
	end

	def destroy
		@shoe.destroy
		redirect_to '/shoes'
	end

	private

	def set_shoe
	@shoe = Shoe.find(params[:id])
	end

	def shoe_params
		params.require(:shoe).permit(:brand, :size, :price)
	end

end
