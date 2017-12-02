require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class Songs < Minitest::Test

  def setup
    @song1 = Songs.new("Still Dre")
    @song2 = Songs.new("Bohemian Rhapsody")
    @song3 = Songs.new("Imagine")


  end


end
