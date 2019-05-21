class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = Dog.all
  end

  def show
  end

  def new
    @dog = Dog.new
  end

  def create
    # Use STRONG PARAMS
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to dogs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @dog.update(dog_params)

    # redirect_to dog_path(@dog)
    redirect_to @dog
  end

  def destroy
    @dog.destroy

    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :birthdate, :colour, :instagram_handle)
  end

  def set_dog
    @dog = Dog.find(params[:id])
  end
end
