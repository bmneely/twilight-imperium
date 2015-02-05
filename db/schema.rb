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

ActiveRecord::Schema.define(version: 20150205190936) do

  create_table "cards", force: true do |t|
    t.integer  "deck_id"
    t.integer  "player_id"
    t.string   "name"
    t.text     "text",       limit: 255
    t.boolean  "discarded",              default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cards", ["deck_id"], name: "index_cards_on_deck_id"
  add_index "cards", ["player_id"], name: "index_cards_on_player_id"

  create_table "decks", force: true do |t|
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "decks", ["game_id"], name: "index_decks_on_game_id"

  create_table "games", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "started",     default: false
    t.string   "name"
    t.integer  "max_players"
  end

  create_table "objective_cards", force: true do |t|
    t.integer  "public_objective_deck_id"
    t.text     "text"
    t.integer  "stage"
    t.integer  "value"
    t.boolean  "revealed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "public_objective_decks", force: true do |t|
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "race_sheets", force: true do |t|
    t.integer  "player_id"
    t.integer  "strategy_allocation"
    t.integer  "fleet_supply"
    t.integer  "command_pool"
    t.integer  "trade_goods"
    t.text     "racial_ability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "race_sheets", ["player_id"], name: "index_race_sheets_on_player_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "roll"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
