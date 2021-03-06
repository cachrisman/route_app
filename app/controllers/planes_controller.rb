class PlanesController < ApplicationController

  def index
      # render text: "Hello, pilots."
      @planes = Plane.all
      render :index
  end

  def new
      render :new
  end

  def create
      plane = params.require(:plane).permit(:name, :design, :description)
      Plane.create(plane)
      redirect_to "/planes"
  end

end
