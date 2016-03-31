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

ActiveRecord::Schema.define(version: 20160331183704) do

  create_table "authorized_representatives", force: :cascade do |t|
    t.string   "full_legal_name"
    t.string   "occupation"
    t.string   "title"
    t.date     "dob"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "authorized_representatives", ["user_id"], name: "index_authorized_representatives_on_user_id"

  create_table "beneficial_owners", force: :cascade do |t|
    t.string   "full_legal_name"
    t.string   "citizenship"
    t.decimal  "ownership_percentage"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.integer  "user_id"
    t.boolean  "no_ind_own_25_or_more"
    t.boolean  "no_other_own_25_or_more"
    t.boolean  "owned_by_pub_trade"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "beneficial_owners", ["user_id"], name: "index_beneficial_owners_on_user_id"

  create_table "corporate_informations", force: :cascade do |t|
    t.string   "name"
    t.string   "trade_name"
    t.string   "country"
    t.string   "email"
    t.string   "state"
    t.string   "registration"
    t.string   "tax_id"
    t.string   "nature_of_business"
    t.boolean  "money_services"
    t.boolean  "in_precious_stones"
    t.boolean  "travel_or_tour"
    t.string   "public"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "corporate_informations", ["user_id"], name: "index_corporate_informations_on_user_id"

  create_table "corporate_personnels", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "no_ind_own_25_or_more"
    t.boolean  "no_other_ind_own_25_or_more"
    t.boolean  "owned_by_pub_trade"
  end

  add_index "corporate_personnels", ["user_id"], name: "index_corporate_personnels_on_user_id"

  create_table "fx_and_payments", force: :cascade do |t|
    t.string   "purpose"
    t.string   "currencies"
    t.integer  "approx_trade_vol"
    t.integer  "approx_monthly_nb"
    t.integer  "approx_annual_vol"
    t.string   "countries_transf_to"
    t.string   "countries_transf_from"
    t.integer  "user_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "fx_and_payments", ["user_id"], name: "index_fx_and_payments_on_user_id"

  create_table "general_infos", force: :cascade do |t|
    t.string   "corporate_name"
    t.string   "trade_name"
    t.string   "country_of_inc",     default: "United States"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "country"
    t.string   "landline_number"
    t.string   "cell_number"
    t.string   "email"
    t.string   "state_of_inc"
    t.string   "tax_id"
    t.string   "nature_of_business"
    t.string   "website"
    t.integer  "user_id"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "general_infos", ["user_id"], name: "index_general_infos_on_user_id"

  create_table "officers", force: :cascade do |t|
    t.string   "full_legal_name"
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "officers", ["user_id"], name: "index_officers_on_user_id"

  create_table "politically_exposed_people", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "position_held"
    t.date     "from"
    t.date     "to"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "politically_exposed_people", ["user_id"], name: "index_politically_exposed_people_on_user_id"

  create_table "signatories", force: :cascade do |t|
    t.string   "full_legal_name"
    t.string   "title"
    t.date     "dob"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "signatories", ["user_id"], name: "index_signatories_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.boolean  "is_app_complete",        default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
