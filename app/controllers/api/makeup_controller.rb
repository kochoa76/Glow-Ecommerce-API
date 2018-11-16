class Api::MakeupController < ApplicationController
before_action :set_makeup, only: [:show, :update, :destroy]

  def index
    render json: Makeup.all, include: :reviews
  end

  def create
    makeup = Makeup.new(makeup_params)
    if makeup.save
      render json: makeup
    else
      render json: {message: makeup.errors}, status: 400
    end
  end

  def show
    render json: @makeup, include: :reviews
  end

  def update
    if @makeup.update(makeup_params)
      render json: @makeup
    else
      render json: {message: @makeup.errors}, status: 400
    end
  end

  def destroy
    if @makeup.destroy
      render status: 204
    else
      render json: {message: "Unable to remove this makeup"}, status: 400
    end
  end


  private

  def makeup_params
    params.require(:makeup).permit(:name, :price, :img_url, :description)
  end

  def set_makeup
    @makeup = Makeup.find_by(id: params[:id] )
  end
end
