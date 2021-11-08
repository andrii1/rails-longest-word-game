class GamesController < ApplicationController
  def new
    @array = (('A'..'Z').to_a).sample(9)
  end
  def score
  end
end
