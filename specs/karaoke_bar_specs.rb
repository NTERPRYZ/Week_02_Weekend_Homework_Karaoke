require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar.rb')

class TestKaraokeBar < Minitest::Test

  def setup
    @karaokebar = KaraokeBar.new(10)
  end

end
