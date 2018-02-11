class Rooms

  attr_reader :name, :capacity, :cost

  def initialize(name, capacity, cost)
    @name = name
    @capacity = capacity
    @cost = cost
  end

  def add_guest(guests)
    @capacity += guests.partysize
  end

  def remove_guest(guests)
    @capacity -= guests.partysize
  end

  # def guests_favsong(guests)
  #   if @guests.favsong == "November Rain"
  #     return "Wooo, this my jam!"
  #   end
  # end
  # def check_capacity(guests)
  #   return @capacity >= guests.partysize
  # end
end
