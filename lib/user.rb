require 'pry'

class User

  attr_reader :jokes

  def initialize(name)
    @name = name
    @jokes = []

  end

  def learn(joke)
    jokes << joke
  end

  def tell(user, joke)
    user.learn(joke)
  end

  def joke_by_id(id)
    jokes_index = id - 1
    jokes.find do |id|
      id == jokes[jokes_index]
    end
  end
end
