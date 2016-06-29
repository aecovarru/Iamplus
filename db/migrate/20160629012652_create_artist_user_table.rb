class CreateArtistUserTable < ActiveRecord::Migration[5.0]
  def change
    create_table :artists_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :artist, index: true
    end
    add_index :artists_users, [:artist_id, :user_id], unique: true
  end
end
