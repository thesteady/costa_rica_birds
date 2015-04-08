class BirdsController < ApplicationController

  def index
    @birds = Bird.all
  end

  def new
    @bird = Bird.new
  end

  def create
    bird = Bird.new(bird_params)
    if bird.save
      redirect_to bird_path(bird)
    else
      render :new
    end
  end

  def show
    @bird = Bird.find(params[:id])
  end

  def edit
    @bird = Bird.find_by_id(params[:id])
  end

  def update
    bird = Bird.find_by_id(params[:id])

    if bird.update_attributes(bird_params)
      redirect_to bird_path(bird)
    else
      render edit_bird_path(bird)
    end
  end

  private
  def bird_params
    params.require(:bird).permit(:photo, :name, :description, :priority, :number_of_locations)
  end
end