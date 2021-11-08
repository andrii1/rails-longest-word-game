require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = (('A'..'Z').to_a).sample(10)
  end
  def score
    @word = params[:word]
    @url = 'https://api.github.com/users/ssaunier'
    @user_serialized = URI.open(@url).read
    @user = JSON.parse(@user_serialized)
  end
end
