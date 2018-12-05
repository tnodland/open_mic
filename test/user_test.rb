require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test

  def setup
    @joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @new_joke = Joke.new(2, "Why did the chicken cross the road?", "I don't know, that's why I was asking you!")
    @sal = User.new("Sal")
  end

  def test_user_exists
    assert_instance_of User, @sal
  end

  def test_user_has_an_empty_array_for_jokes
    assert_equal [], @sal.jokes 
  end

  def test_user_can_have_jokes
    assert_instance_of Joke, @sal.jokes
  end
end
