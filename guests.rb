class Guests

attr_reader :name, :partysize, :favsong, :wallet

  def initialize(name,partysize, favsong, wallet)
    @name = name
    @partysize = partysize
    @favsong = favsong
    @wallet = wallet
  end

  def books_room(rooms)
    @wallet -= rooms.cost()
  end

end
