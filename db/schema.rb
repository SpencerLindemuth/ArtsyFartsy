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

ActiveRecord::Schema.define(version: 2019_08_14_215047) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pieces", force: :cascade do |t|
    t.boolean "isHighlight"
    t.string "primaryImage"
    t.string "primaryImageSmall"
    t.string "department"
    t.string "objectName"
    t.string "title"
    t.string "culture"
    t.string "artistDisplayName"
    t.string "objectDate"
    t.string "medium"
    t.string "dimensions"
    t.string "classification"
    t.string "repository"
    t.string "objectURL"
    t.string "tags"
    t.string "country"
    t.string "artistNationality"
  end

end
