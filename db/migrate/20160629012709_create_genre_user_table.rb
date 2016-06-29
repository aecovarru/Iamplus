class CreateGenreUserTable < ActiveRecord::Migration[5.0]
  def change
    create_table :genres_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :genre, index: true
    end
    add_index :genres_users, [:genre_id, :user_id], unique: true
  end
end
