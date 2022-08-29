class LaptopsController < ApplicationController
  before_action :set_laptop , only: %i[show edit update destroy]

  def index
  @laptops = Laptop.all
  end

  def new
  @laptop = Laptop.new
  end

  def create
  @laptop = Laptop.new(laptop_params)
  @laptop.save
  redirect_to '/laptops'
  end

  def show
  end
  
  def edit
  end

  def update
   @laptop = Laptop.new(laptop_params)
   redirect_to '/laptops'
  end

  def destroy
  	@laptop.destroy
  	redirect_to '/laptops'
  end

  def bulk_delete
  	params[:laptop_id].uniq.each {|x| Laptop.find(x).destroy  if x.present?}
  	redirect_to '/laptops'
  end

  private

  def set_laptop
  	@laptop = Laptop.find(params[:id])
  end

  def laptop_params
  	params.require(:laptop).permit(:brand, :model, :price)
  end

end
