require("minitest/autorun")
require_relative("../guests")
require_relative("../rooms")
class GuestsTest < MiniTest::Test

  def setup()
    @guests = Guests.new("Oli", 3, "November Rain", 40)
    @guests1 = Guests.new("Sinead", 4, "Happy Birthday", 75)
    @guests2 = Guests.new("Mike", 5, "I shot the Sheriff", 5)
    @guests3 = Guests.new("Sheila", 6,  "Jingle Bells", 40)
    @guests4 = Guests.new("Nick", 4, "Tequila!", 40)
    @rooms1 = Rooms.new("Room 02", 0, 4)
  end

  def test_guest_has_name
    assert_equal("Oli", @guests.name())
  end

  def test_guests_partysize
    assert_equal(3, @guests.partysize())
  end

  def test_guest_favourite_song
    assert_equal("November Rain", @guests.favsong())
  end

  def test_guest_has_money
    assert_equal(40, @guests.wallet())
  end

  def test_books_room
    @guests.books_room(@rooms1)
    assert_equal(36, @guests.wallet())
  end
end
