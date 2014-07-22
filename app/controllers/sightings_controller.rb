class SightingsController < ApplicationController
  before_filter :find_sighting, only: [:show, :edit, :update, :destroy]

  def index
    @sightings = Sighting.most_recent
  end

  private

  def find_sighting
    Sighting.find(params[:id])
  end
end
