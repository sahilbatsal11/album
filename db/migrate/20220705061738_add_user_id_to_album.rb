class AddUserIdToAlbum < ActiveRecord::Migration[6.1]
  def change
    add_reference :albums, :user, null: false, foreign_key: true
  end
end
 