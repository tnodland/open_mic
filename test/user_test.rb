require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test

  def setup
    @joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @new_joke = Joke.new(2, "Why did the chicken cross the road?", "I don't know, that's why I was asking you!")
    @sal = User.new("Sal")
    @ali = User.new("Ali")
  end

  def test_user_exists
    assert_instance_of User, @sal
  end

  def test_user_has_an_empty_array_for_jokes
    assert_equal [], @sal.jokes
  end

  def test_user_can_have_jokes
    @sal.jokes << @joke
    assert_instance_of Joke, @sal.jokes[0]
  end

  def test_user_can_learn_jokes
    @sal.learn(@joke)
    assert_instance_of Joke, @sal.jokes[0]
    @sal.learn(@new_joke)
    assert_instance_of Joke, @sal.jokes[1]
  end

  def test_users_can_tell_jokes
    @sal.tell(@ali, @joke)
    assert_instance_of Joke, @ali.jokes[0]
  end
end
