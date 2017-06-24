class FightController < ApplicationController
  def index
    @pokemon = Pokemon.generate
    @star_wars = StarWar.generate
  end
end
