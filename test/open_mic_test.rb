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

  def test_open_mic_knows_location
    assert_equal "Comedy Works", @open_mic.location
  end

  def test_open_mic_knows_date
    assert_equal "11-20-18", @open_mic.date
  end

  def test_open_mic_knows_different_location_and_date
    open_mic_2 = OpenMic.new({location: "The Laugh Factory", date: "12-25-18"})
    assert_equal "The Laugh Factory", open_mic_2.location
    assert_equal "12-25-18", open_mic_2.date
  end

  def test_open_mic_starts_with_no_performers
    assert_equal [], @open_mic.performers
  end

  def test_performers_can_be_added
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)
    # require 'pry'; binding.pry 
    assert_instance_of User, @open_mic.performers[0]
  end
end
