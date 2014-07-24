class SightingsController < ApplicationController
  before_filter :find_sighting, only: [:show]

  def index
    @sightings = Sighting.most_recent
  end

  def new
    @sighting = Sighting.new
    @user = User.find(14)
  end

  def create
    @sighting = Sighting.new(sighting_params.merge(user_id: 14, when: DateTime.now))

    if @sighting.save
      redirect_to sightings_path, notice: 'Sighting logged!'
    else
      render action: 'new'
    end
  end

  private

  def find_sighting
    Sighting.find(params[:id])
  end

  def sighting_params
    params.require(:sighting).permit(:location, :when, :comment, :mood)
  end
end
