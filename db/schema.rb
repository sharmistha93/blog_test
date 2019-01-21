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

ActiveRecord::Schema.define(version: 2019_01_21_002705) do

  create_table "molecules", force: :cascade do |t|
    t.string "name"
    t.string "central_atom"
    t.string "other_atoms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "num_atoms"
    t.string "formula"
    t.string "fullElectrons"
    t.string "availElectrons"
    t.string "donestatus"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sketchtrainings", force: :cascade do |t|
    t.string "interpretation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "cosineStartAngle"
    t.float "sineStartAngle"
    t.float "bbDiagLen"
    t.float "bbDiagAngle"
    t.float "startEndDist"
    t.float "startEndCosineAngle"
    t.float "startEndSineAngle"
    t.float "strokeLength"
    t.float "angleTrav9"
    t.float "angleTrav10"
    t.float "angleTrav11"
    t.float "maxSpeed"
    t.float "pathDuration"
  end

  create_table "techniques", force: :cascade do |t|
    t.integer "session"
    t.string "molecule"
    t.integer "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "techType"
  end

end
