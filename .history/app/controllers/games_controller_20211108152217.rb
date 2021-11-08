require 'json'
require 'open-uri'

# puts "#{user['name']} - #{user['bio']}"

class GamesController < ApplicationController
  def new
    @letters = (('A'..'Z').to_a).sample(10)
  end
  def score
    @word = params[:word]
    @url = `https://wagon-dictionary.herokuapp.com/#{@word}`
    @word_serialized = URI.open(@url).read
    @check = JSON.parse(@word_serialized)
    if @check[]
  end
end
