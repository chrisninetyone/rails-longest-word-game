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
      end
    end


    #count method for array

    # if input.include?
    #   @score = 100
    # elsif input.length > 5
    #   @score = 50
    # else
    #   @score = 10
    # end
  end
end


"https://wagon-dictionary.herokuapp.com/:word"


# The word can't be built out of the original grid
# The word is valid according to the grid, but is not a valid English word
# The word is valid according to the grid and is an English word
