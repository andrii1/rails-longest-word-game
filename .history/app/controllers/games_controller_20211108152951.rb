require 'json'
require 'open-uri'

# puts "#{user['name']} - #{user['bio']}"

class GamesController < ApplicationController
  def new
    @letters = (('A'..'Z').to_a).sample(10)
  end
  def score
    @word = params[:word]
    @word_array = @word.split(", ")


    @url = `https://wagon-dictionary.herokuapp.com/#{@word}`
    @word_serialized = URI.open(@url).read
    @check = JSON.parse(@word_serialized)
    if @word_array - @letters.empty?
      if @check["found"] == "false"
        @result=`Sorry, but #{@word} doesn't seem to be a valid English word`
      else
        @result=`Congratulations! #{@word} is a valid English word!`
      end
    else
      @result=`Sorry, but #{@word} can't be built out of #{@letters}`
    end
  end
end