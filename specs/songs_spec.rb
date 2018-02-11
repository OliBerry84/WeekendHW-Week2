require("minitest/autorun")
require_relative("../songs")

class SongsTest < MiniTest::Test

  def setup()
    @songs = Songs.new("November Rain")
    @songs1 = Songs.new("Cochise")
    @songs2 = Songs.new("Bob the Builder")
    @songs3 = Songs.new("mmmBop")
    @songs4 = Songs.new("Whisky In The Jar")
  end

  def test_song_has_title
    assert_equal("November Rain", @songs.name())
  end
end
