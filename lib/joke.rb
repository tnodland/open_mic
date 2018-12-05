require 'pry'

class Joke
  attr_reader :id,
              :setup 

  def initialize(id, setup, punchline)
    @id = id
    @setup = setup
    @punchline = punchline
  end


end
