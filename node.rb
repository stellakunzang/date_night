class Node

  attr_reader :score, :movie

  attr_accessor :left, :right

  def initialize(score, movie)
    @score = score
    @movie = movie
    @left = nil
    @right = nil
  end

end
