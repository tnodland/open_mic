require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def setup
    @joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @new_joke = Joke.new(2, "Why did the chicken cross the road?", "I don't know, that's why I was asking you!")
  end

  def test_joke_exists
    assert_instance_of Joke, @joke
  end

  def test_joke_has_unique_ids
    assert_equal 1, @joke.id
    assert_equal 2, @new_joke.id
  end

  def test_joke_has_unique_setups
    assert_equal "Why did the strawberry cross the road?", @joke.setup
    assert_equal "Why did the chicken cross the road?", @new_joke.setup
  end

  def test_joke_has_unique_punchlines
    assert_equal "Because his mother was in a jam.", @joke.punchline
    assert_equal "I don't know, that's why I was asking you!", @new_joke.punchline
  end
end
