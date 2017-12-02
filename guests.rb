class Guests


  attr_reader :name, :room, :wallet, :fave_song

  def initialize(name, room, wallet, fave_song)
    @name = name
    @room = room
    @wallet = wallet
    @fave_song = fave_song
  end

  def can_afford?(entry_price)
    return @wallet >= entry_price.entry_price
  end

  def pay_for_entry(price_to_pay)
    @wallet -= price_to_pay.entry_price
  end

  def song_reaction()
    return "Woooooo I LOVEEEEE #{fave_song}!!"
  end

end
