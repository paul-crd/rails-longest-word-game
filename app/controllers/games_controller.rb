class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @answer = params[:answer].upcase
    @grid = params[:letters]
    if @answer.chars.all? { |letter| @answer.count(letter) <= @grid.count(letter)}
      @score = "Congratulations! #{@answer} is a valid English word"
    else
      @score = "Sorry but #{@answer} can't be built out of #{@grid}"
    end
  end
end
