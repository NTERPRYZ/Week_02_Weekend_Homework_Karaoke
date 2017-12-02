require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')

class TestRooms < Minitest::Test

  def setup
    @rooms1 = Rooms.new("Green", 30)
    @rooms2 = Rooms.new("Red", 20)
    @rooms3 = Rooms.new("Blue", 10)
  end

  

end
