require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

class OpenMicTest < Minitest::Test

  def setup
    @joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @new_joke = Joke.new(2, "Why did the chicken cross the road?", "I don't know, that's why I was asking you!")
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  end

  def test_open_mic_exists
    assert_instance_of OpenMic, @open_mic
  end

  def test_open_mic_
end
