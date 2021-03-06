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

ActiveRecord::Schema.define(version: 20180121074847) do

  create_table "account_informations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "uName"
    t.string "sexial"
    t.string "password_digest"
    t.string "secAnsw"
    t.integer "room"
    t.binary "picture"
    t.string "belong"
    t.string "grade"
    t.string "hobby"
    t.string "interest"
    t.string "dream"
    t.string "free"
    t.integer "category1"
    t.integer "item1"
    t.integer "category2"
    t.integer "item2"
    t.integer "category3"
    t.integer "item3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "time"
    t.integer "rasId"
    t.string "accountId"
  end

  create_table "tests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "test"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
