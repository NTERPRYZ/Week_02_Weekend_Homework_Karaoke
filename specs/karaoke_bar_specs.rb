require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar.rb')

class TestKaraokeBar < Minitest::Test

  def setup
    @karaokebar = KaraokeBar.new(10, 200) #why cant i put in (10, @karaoke_till)
    @karaoke_till = 200
  end

  def test_pub_has_till
    assert_equal(200, @karaokebar.till)
  end

  def test_till_increases_when_customer_pays_entry
    @karaokebar.pay_entry(10)
    assert_equal(210, @karaokebar.till)
  end

end
