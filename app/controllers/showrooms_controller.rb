# frozen_string_literal: true

class ShowroomsController < ApplicationController
  def index
    @showrooms = Showroom.all
  end

  def new
    @showroom = Showroom.new
  end

  def create
    @showroom = Showroom.new(showroom_params)

    if @showroom.save
      # redirect_to showroom_path(@showroom) #i think
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def showroom_params
    params.require(:showroom).permit(:name, :adress, :phone01, :phone02, :email, :image_url, :geolocation)
  end
end
