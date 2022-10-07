class Api::SkateboardsController < ApplicationController
  def index
    @skateboards = Skateboard.all
    render 'index.json.jb'
  end

  def show 
    @skateboard = Skateboard.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @skateboard = Skateboard.new(
      brand: params[:brand],
      pro: params[:pro],
      color: params[:color]
    )
    @skateboard.save
    render 'show.json.jb'
  end

  def update
    @skateboard = Skateboard.find_by(id: params[:id])
    @skateboard.brand = params[:brand]
    @skateboard.pro = params[:pro]
    @skateboard.color = params[:color]

    @skateboard.save
    render 'show.json.jb'
  end

  def delete
    @skateboard = Skateboard.find_by(id: params[:id])
    @skateboard.delete
    render json: {message: "skateboard deleted"}
  end 
end
