# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160629012709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name", default: ""
  end

  create_table "artists_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "artist_id"
    t.index ["artist_id", "user_id"], name: "index_artists_users_on_artist_id_and_user_id", unique: true, using: :btree
    t.index ["artist_id"], name: "index_artists_users_on_artist_id", using: :btree
    t.index ["user_id"], name: "index_artists_users_on_user_id", using: :btree
  end

  create_table "genre_user_tables", force: :cascade do |t|
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", default: ""
  end

  create_table "genres_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "genre_id"
    t.index ["genre_id", "user_id"], name: "index_genres_users_on_genre_id_and_user_id", unique: true, using: :btree
    t.index ["genre_id"], name: "index_genres_users_on_genre_id", using: :btree
    t.index ["user_id"], name: "index_genres_users_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
  end

end
