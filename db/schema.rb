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

ActiveRecord::Schema.define(version: 20130308222100) do

  create_table "blog_posts", force: true do |t|
    t.string   "type"
    t.string   "title"
    t.text     "body"
    t.text     "excerpt"
    t.string   "permalink"
    t.boolean  "published",        default: false
    t.datetime "published_at"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.string   "state",            default: "draft"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blog_posts", ["permalink"], name: "index_blog_posts_on_permalink", using: :btree
  add_index "blog_posts", ["published"], name: "index_blog_posts_on_published", using: :btree
  add_index "blog_posts", ["state"], name: "index_blog_posts_on_state", using: :btree

  create_table "messages", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
