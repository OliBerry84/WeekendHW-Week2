require("minitest/autorun")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomsTest < MiniTest::Test

  def setup()
    @rooms = Rooms.new("Room 01", 0, 5)#can i put range in for capacity?
    @rooms1 = Rooms.new("Room 02", 0, 4)
    @rooms2 = Rooms.new("Room 03", 0, 10)
    @guests = Guests.new("Oli", 3, "November Rain", 40)
    @guests1 = Guests.new("Sinead", 4, "Happy Birthday", 75)
    @guests2 = Guests.new("Mike", 5, "I shot the Sheriff", 5)
    @guests3 = Guests.new("Sheila", 6,  "Jingle Bells", 40)
    @guests4 = Guests.new("Nick", 4, "Tequila!", 40)
    @songs = Songs.new("November Rain")
    @songs1 = Songs.new("Cochise")
    @songs2 = Songs.new("Bob the Builder")
    @songs3 = Songs.new("mmmBop")
    @songs4 = Songs.new("Whisky In The Jar")
  end

  def test_room_has_name
    assert_equal("Room 01", @rooms.name())
  end

  def test_room_has_capacity
    assert_equal(0, @rooms1.capacity())
  end

  def test_room_add_guests
    @rooms1.add_guest(@guests1)
    assert_equal(4, @rooms1.capacity())
  end

  def test_room_remove_guests
    @rooms1.add_guest(@guests1)
    @rooms1.remove_guest(@guests1)
    assert_equal(0, @rooms1.capacity())
  end

  def test_room_cost
    assert_equal(5, @rooms.cost())
  end

  # def test_guests_favsong
  #   @guests.favsong = @songs.name
  #   assert_equal("Wooo, this my jam!", @guests.favsong)
  # end
  # def test_check_capacity
  #   result = @rooms1.check_capacity()
  #   assert_equal(true, result)
  # end

  # def test_add_song
  #   @songs1.add_song(@rooms1)
  #   assert_equal("cochise", @songs1.name())
  # end

  # def test_room_at_capacity
  #   @rooms1.capacity(@guests1)
  #   @rooms1.capacity(@guests2)
  #   @rooms1.capacity(@guests3)
  #   @rooms1.capacity(@guests4)
  #   result = @rooms1.check_if_full()
  #   assert_equal(true, result)
  # end
end
