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

ActiveRecord::Schema.define(version: 20130912163134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcements", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "icon"
    t.string   "link"
    t.boolean  "publish"
    t.string   "alert_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chatrooms", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date"
    t.time     "start_time"
    t.time     "finish_time"
    t.boolean  "publish"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "icon"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "inclasses", force: true do |t|
    t.integer  "week_id"
    t.integer  "day"
    t.string   "title"
    t.text     "intro"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "inclasses", ["slug"], name: "index_inclasses_on_slug", unique: true, using: :btree
  add_index "inclasses", ["week_id"], name: "index_inclasses_on_week_id", using: :btree

  create_table "links", force: true do |t|
    t.integer  "week_id"
    t.string   "title"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "quick"
    t.text     "description"
  end

  add_index "links", ["week_id"], name: "index_links_on_week_id", using: :btree

  create_table "projects", force: true do |t|
    t.integer  "week_id"
    t.string   "title"
    t.text     "intro"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "projects", ["slug"], name: "index_projects_on_slug", unique: true, using: :btree
  add_index "projects", ["week_id"], name: "index_projects_on_week_id", using: :btree

  create_table "quicklinks", force: true do |t|
    t.string   "icon"
    t.string   "name"
    t.string   "url"
    t.boolean  "active"
    t.boolean  "important"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizzes", force: true do |t|
    t.integer  "week_id"
    t.string   "title"
    t.text     "intro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quizzes", ["week_id"], name: "index_quizzes_on_week_id", using: :btree

  create_table "readings", force: true do |t|
    t.integer  "week_id"
    t.string   "title"
    t.text     "intro"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "readings", ["week_id"], name: "index_readings_on_week_id", using: :btree

  create_table "redactor_assets", force: true do |t|
    t.integer  "user_id"
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], name: "idx_redactor_assetable", using: :btree
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_redactor_assetable_type", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "sections", force: true do |t|
    t.integer  "inclass_id"
    t.integer  "priority"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "sections", ["inclass_id"], name: "index_sections_on_inclass_id", using: :btree
  add_index "sections", ["slug"], name: "index_sections_on_slug", unique: true, using: :btree

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: true do |t|
    t.string "name"
  end

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_profiles", force: true do |t|
    t.integer  "user_id"
    t.string   "picture"
    t.text     "background"
    t.text     "hobbies"
    t.string   "facebook"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "website"
    t.string   "nickname"
    t.string   "slug"
    t.string   "github"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "weeks", force: true do |t|
    t.integer  "number"
    t.string   "title"
    t.text     "intro"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "end_date"
    t.date     "start_date"
    t.string   "slug"
  end

  add_index "weeks", ["slug"], name: "index_weeks_on_slug", unique: true, using: :btree

end
