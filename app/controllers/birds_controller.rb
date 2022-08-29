class BirdsController < ApplicationController
before_action :set_bird ,only: %i[ show edit destroy update toggel_status]

	def index
	@birds = Bird.all
	end

	def new
	@bird = Bird.new
	end

	def create
	@bird = Bird.new(bird_params)

		if @bird.save
			flash[:notice] = "created successfully"
			redirect_to '/birds'
		else
			render 'new'
		end 
	end

	def edit
	
	end
	def toggel_status
		if @bird.draft?
			@bird.published!
		else
		@bird.draft!
		end	
		redirect_to birds_path
	end

	def update
	if @bird.update(bird_params)
		flash[:notice] = "updated successfully"		
	redirect_to '/birds'
	else
		render 'update'
	end
	end

	def show
	end

	def destroy
	@bird.destroy
	redirect_to '/birds'	
	end

	def bulk_delete
		params[:bird_id].uniq.each {|x| Bird.find(x).destroy if x.present?}
		redirect_to '/birds'
	end

	private

	def set_bird
	@bird = Bird.find(params[:id])
	end

	def bird_params
		params.require(:bird).permit(:name, :size)
	end

end
