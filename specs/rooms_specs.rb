require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')

class TestRooms < Minitest::Test

  def setup
    @room1 = Rooms.new("Green", 30)
    @room2 = Rooms.new("Red", 20)
    @room3 = Rooms.new("Blue", 10)
  end

  def test_refuse_entry_if_too_full
    assert_equal("Room Full", @room1.room_full(31))
  end

  def test_allow_entry_if_not_too_full
    assert_equal("Go on in!", @room2.room_not_too_full(19))
  end

end
