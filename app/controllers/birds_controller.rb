class BirdsController < ApplicationController

  def index
    @birds = Bird.all
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
    params.require(:bird).permit(:photo, :name, :description)
  end
end