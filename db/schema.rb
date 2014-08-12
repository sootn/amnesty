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

ActiveRecord::Schema.define(version: 20140809074934) do

  create_table "positions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions_roles", force: true do |t|
    t.integer "position_id"
    t.integer "role_id"
  end

  add_index "positions_roles", ["position_id"], name: "index_positions_roles_on_position_id"
  add_index "positions_roles", ["role_id"], name: "index_positions_roles_on_role_id"

  create_table "privilege_assignments", force: true do |t|
    t.integer "privilege_id"
    t.integer "privileged_id"
    t.string  "privileged_type"
    t.date    "expires"
  end

  add_index "privilege_assignments", ["privilege_id"], name: "index_privilege_assignments_on_privilege_id"
  add_index "privilege_assignments", ["privileged_id"], name: "index_privilege_assignments_on_privileged_id"

  create_table "privileges", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_assignments", force: true do |t|
    t.date     "expires"
    t.integer  "role_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "role_assignments", ["role_id"], name: "index_role_assignments_on_role_id"
  add_index "role_assignments", ["student_id"], name: "index_role_assignments_on_student_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "default_term_end"
  end

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "ugid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
