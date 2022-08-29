class PagesController < ApplicationController
before_action :set_page , only: %i[ show edit update destroy ]

	def index
		@pages = Page.all
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.new(page_params)
		@page.save
		flash[:success] = "crated sucessfully"
		redirect_to '/pages'
	end

	def show
	end

	def edit
	end

	def update
		@page.update(page_params)
		flash[:success] = "updated sucessfully"
		redirect_to '/pages'
	end

	def destroy
		@page.destroy
		flash[:success] = "deleted sucessfully"
		redirect_to '/pages'
	end

	private

	def set_page
		@page = Page.find(params[:id])
	end

	def page_params
		params.require(:page).permit(:title, :body, :page_num )
	end

end
