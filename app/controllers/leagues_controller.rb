class LeaguesController < ApplicationController
  def new
    @league = League.new
  end

  def create
    league = League.new(league_params)
    respond_to do |format|
      if league.save
        format.html { redirect_to new_league_path }
        format.json { render json: league }
      end
    end
  end

  def search
    latitude, longitude = params.fetch(:coordinates).split(",")
    leagues = League.leagues_to_sponsor(
      radius: params.fetch(:radius),
      latitude: latitude,
      longitude: longitude,
      budget: params.fetch(:budget).to_f
    )
    render json: leagues
  end

  private

  def league_params
    params.require(:league).permit(
      :name,
      :latitude,
      :longitude,
      :price
    )
  end
end
