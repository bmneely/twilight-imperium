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

ActiveRecord::Schema.define(version: 20150216010309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.integer  "deck_id"
    t.integer  "player_id"
    t.string   "name",       limit: 255
    t.text     "text"
    t.boolean  "discarded",              default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cards", ["deck_id"], name: "index_cards_on_deck_id", using: :btree
  add_index "cards", ["player_id"], name: "index_cards_on_player_id", using: :btree

  create_table "claimed_objectives", force: :cascade do |t|
    t.integer  "objective_card_id"
    t.integer  "player_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "claimed_objectives", ["objective_card_id"], name: "index_claimed_objectives_on_objective_card_id", using: :btree
  add_index "claimed_objectives", ["player_id"], name: "index_claimed_objectives_on_player_id", using: :btree

  create_table "decks", force: :cascade do |t|
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "decks", ["game_id"], name: "index_decks_on_game_id", using: :btree

  create_table "games", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "started",                 default: false
    t.string   "name",        limit: 255
    t.integer  "max_players"
  end

  create_table "objective_cards", force: :cascade do |t|
    t.integer  "public_objective_deck_id"
    t.text     "text"
    t.integer  "stage"
    t.integer  "value"
    t.boolean  "revealed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seating_order"
  end

  create_table "public_objective_decks", force: :cascade do |t|
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "race_sheets", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "strategy_allocation"
    t.integer  "fleet_supply"
    t.integer  "command_pool"
    t.integer  "trade_goods"
    t.text     "racial_ability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "race_sheets", ["player_id"], name: "index_race_sheets_on_player_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "roll",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
