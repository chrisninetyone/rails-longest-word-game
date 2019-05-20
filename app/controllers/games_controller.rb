require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    arr = Array('a'..'z')
    @letters = arr.sample(10)
  end

  def score

    input = params[:input].split('')
    letters = params[:letters]

    input.each do |letter|
      if letters.include? letter
        @score = input.length
      else
        @score = 0
      end
    end

    # response = open("https://wagon-dictionary.herokuapp.com/#{input}")
    # json = JSON.parse(response)
    # json.exist

    #count method for array

  end

  # def checkDictionary
  #   url = "https://wagon-dictionary.herokuapp.com/#{}"
  # end
end






# The word can't be built out of the original grid
# The word is valid according to the grid, but is not a valid English word
# The word is valid according to the grid and is an English word
