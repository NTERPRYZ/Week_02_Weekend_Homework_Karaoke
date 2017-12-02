require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../karaoke_bar.rb')
require_relative('../songs.rb')

class TestGuests < Minitest::Test

  def setup
    @guest1 = Guests.new("Robert", "Green", 100, "Still Dre") #why cant i use "@song1"
    @guest2 = Guests.new("John", "Red", 50, @song2)
    @guest3 = Guests.new("Laura", "Blue", 5, @song3)
    @karaokebar = KaraokeBar.new(10)
    @song1 = Songs.new("Still Dre")
    @song2 = Songs.new("Bohemian Rhapsody")
    @song3 = Songs.new("Imagine")
  end

  def test_guest_has_name()
    assert_equal("Robert", @guest1.name)
  end


  def test_guest_room_name()
    assert_equal("Red", @guest2.room)
  end

  def test_guest_can_afford_entry()
    assert_equal(true, @guest1.can_afford?(@karaokebar))
  end

  def test_guest_cant_afford_entry()
    assert_equal(false, @guest3.can_afford?(@karaokebar))
  end

  def test_customers_wallet_decreases_with_entry_price
    @guest1.pay_for_entry(@karaokebar)
    assert_equal(90, @guest1.wallet)
  end

  def test_fave_song_reaction
    assert_equal("Woooooo I LOVEEEEE Still Dre!!", @guest1.song_reaction)
  end




end
