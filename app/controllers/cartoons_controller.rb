class CartoonsController < ApplicationController
  def index
    @cartoons = Cartoon.all
    json_response(@cartoons)
  end

  def show
    @cartoon = Cartoon.find(params[:id])
    json_response(@cartoon)
  end

  def create
    @cartoon = Cartoon.create!(cartoon_params)
    json_response(@cartoon, :created)
  end

  def update
    @cartoon = Cartoon.find(params[:id])
    if @cartoon.update!(cartoon_params)
      render status: 200, json: {
        message: "Yabba Dabba Doo!!!"
      }
    end
  end

  def destroy
    @cartoon = Cartoon.find(params[:id])
    if @cartoon.destroy!
      render status: 200, json: {
        message: "Zoinks!"
      }
    end
  end

  private
  def cartoon_params
    params.permit(:name)
  end

end
