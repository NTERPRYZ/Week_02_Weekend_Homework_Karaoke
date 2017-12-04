class KaraokeBar

  attr_reader :entry_price, :till

    def initialize(entry_price, input_till)
      @entry_price = entry_price
      @till = input_till
    end

    def pay_entry(pay)
    @till += pay.entry_price
  end


end
