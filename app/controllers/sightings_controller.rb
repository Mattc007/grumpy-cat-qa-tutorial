class SightingsController < ApplicationController
  before_filter :find_sighting, only: [:show]

  def index
    @sightings = Sighting.most_recent
  end

  def new
    @sighting = Sighting.new
  end

  private

  def find_sighting
    Sighting.find(params[:id])
  end
end
