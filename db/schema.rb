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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121129204125) do

  create_table "answers", :force => true do |t|
    t.integer  "question_option_id"
    t.integer  "quiz_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "daily_quizzes", :force => true do |t|
    t.date     "date"
    t.integer  "quiz_definition_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "daily_quizzes", ["date"], :name => "index_daily_quizzes_on_date"
  add_index "daily_quizzes", ["quiz_definition_id"], :name => "index_daily_quizzes_on_quiz_definition_id"

  create_table "players", :force => true do |t|
    t.string   "username"
    t.string   "name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "players", ["remember_token"], :name => "index_players_on_remember_token"
  add_index "players", ["username"], :name => "index_players_on_username", :unique => true

  create_table "question_options", :force => true do |t|
    t.text     "answer"
    t.boolean  "is_correct"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "questions", :force => true do |t|
    t.text     "question"
    t.integer  "quiz_definition_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "quiz_definitions", :force => true do |t|
    t.integer  "difficulty"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "quizzes", :force => true do |t|
    t.integer  "player_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "daily_quiz_id"
    t.integer  "time"
  end

  add_index "quizzes", ["daily_quiz_id"], :name => "index_quizzes_on_daily_quiz_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "teams", ["name"], :name => "index_teams_on_name", :unique => true

end
