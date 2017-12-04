class Rooms

  attr_reader :room_name, :max_guests

    def initialize(room_name, max_guests)
      @room_name = room_name
      @max_guests = max_guests
    end

    def room_full(number_of_guests)
     number_of_guests >= max_guests
       return "Room Full"
    end

    def room_not_too_full(number_of_guests)
     number_of_guests <= max_guests
       return "Go on in!"
    end




end
