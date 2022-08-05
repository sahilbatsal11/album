require "test_helper"

class AlbumTest < ActiveSupport::TestCase
  test "the truth" do
   assert true
  end

  test "should not save albums without name" do
   album = Album.new
   album.name = nil
   assert_not album.save, "Saved the album without a name"
  end

  test "should not  save albums without a description" do
    album = Album.new
    album.description = nil
    assert_not album.save, "Saved the album without a description"
  end
end

