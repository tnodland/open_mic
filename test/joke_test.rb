require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def setup
    @joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
  end

  def test_joke_exists
    assert_instance_of Joke, @joke
  end

  def test_joke_has_id
    assert_equal 1, @joke.id
  end
end
