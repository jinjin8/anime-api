class CharactersController < ApplicationController
  def index
    @cartoon = Cartoon.find(params[:cartoon_id])
    @characters = @cartoon.characters
    json_response(@characters)
  end

  def by_name
    @cartoon = Cartoon.find(params[:cartoon_id])
    @characters = @cartoon.characters.by_name(params[:name])
    json_response(@characters)
  end

  def show
    @cartoon = Cartoon.find(params[:cartoon_id])
    @character = Character.find(params[:id])
    json_response(@character)
  end

  def create
    @cartoon = Cartoon.find(params[:cartoon_id])
    @character = @cartoon.characters.create!(character_params)
    json_response(@character, :created)
  end

  def update
    @cartoon = Cartoon.find(params[:cartoon_id])
    @character = Character.find(params[:id])
    if @character.update!(character_params)
      render status: 200, json: {
        message: "You get a scooby snack!"
      }
    end
  end

  def destroy
    @character = Character.find(params[:id])
    if @character.destroy!
      render status: 200, json: {
        message: "Burned!"
      }
    end
  end

  private
  def character_params
    params.permit(:name, :powers, :cartoon_id)
  end
end
