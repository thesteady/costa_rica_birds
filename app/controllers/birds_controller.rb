class BirdsController < ApplicationController
  def index
    @birds = Bird.all
  end

  def show
  end
end