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

ActiveRecord::Schema.define(version: 20160104034115) do

  create_table "encounters", force: :cascade do |t|
    t.float    "obs_exp_readmit_difference"
    t.float    "readmit_exp"
    t.float    "obs_exp_cost_difference"
    t.float    "expected_direct_cost"
    t.float    "risk_adjusted_cost"
    t.float    "average_bundle_cost"
    t.string   "risk_score"
    t.string   "combined_bundle_icd9"
    t.string   "bundle_name"
    t.string   "readmit_days_from_discharge"
    t.integer  "readmission"
    t.integer  "had_readmission"
    t.integer  "total_ip_visits"
    t.string   "uniqueid"
    t.float    "contribution_margin"
    t.float    "cases"
    t.float    "direct_costs"
    t.float    "fixed_costs"
    t.float    "actual_payment"
    t.float    "total_adjustment"
    t.float    "total_charges"
    t.string   "payor_group"
    t.string   "payor_type"
    t.string   "discharge_disposition"
    t.date     "discharge_date"
    t.date     "admit_date"
    t.string   "facility_name"
    t.string   "attending_physician_description"
    t.string   "attending_physician_id"
    t.string   "admitting_physician_description"
    t.string   "admitting_physician_id"
    t.string   "primary_icd9_poa"
    t.string   "primary_icd9_description"
    t.string   "primary_icd9"
    t.string   "msdrg_description"
    t.integer  "msdrg"
    t.string   "icd9_procedure"
    t.string   "admit_source"
    t.integer  "length_of_stay"
    t.string   "zip_code"
    t.string   "gender"
    t.integer  "age"
    t.date     "birth_date"
    t.string   "standard_id"
    t.string   "patient_account"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "password"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
