# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140120073936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.text     "title"
    t.text     "body"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elements", force: true do |t|
    t.string   "name"
    t.integer  "style_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "css_tag"
  end

  create_table "styles", force: true do |t|
    t.string   "name"
    t.string   "font"
    t.string   "font_size"
    t.string   "text_color"
    t.string   "background_color"
    t.string   "border_color"
    t.string   "border_thickness"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
