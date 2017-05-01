# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema_Import_From_Till.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "addresses", force: :cascade do |t|
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "guid",       limit: 36, default: "", null: false
    t.string   "address_1",  limit: 30, default: "", null: false
    t.string   "address_2",  limit: 30, default: "", null: false
    t.string   "address_3",  limit: 30, default: "", null: false
    t.string   "address_4",  limit: 30, default: "", null: false
    t.string   "post_code",  limit: 30, default: "", null: false
    t.datetime "timestamp",                          null: false
  end

  create_table "allowances", force: :cascade do |t|
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "guid",       limit: 36, default: "", null: false
    t.string   "name",       limit: 30, default: "", null: false
    t.datetime "timestamp",                          null: false
  end

  create_table "card_discount_matrices", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "guid",        limit: 36, default: "", null: false
    t.integer  "group_id",    limit: 4,  default: 0,  null: false
    t.integer  "plu_id",      limit: 4,  default: 0,  null: false
    t.integer  "profile_id",  limit: 4,  default: 0,  null: false
    t.integer  "discount_id", limit: 4,  default: 0,  null: false
    t.datetime "timestamp",                           null: false
  end

  create_table "card_discounts", force: :cascade do |t|
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "guid",          limit: 36,  default: "",  null: false
    t.string   "name",          limit: 30,  default: "",  null: false
    t.string   "description",   limit: 255, default: "",  null: false
    t.integer  "discount_type", limit: 4,   default: 0,   null: false
    t.float    "amount",        limit: 53,  default: 0.0, null: false
    t.datetime "timestamp",                               null: false
  end

  create_table "card_holders", force: :cascade do |t|
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
    t.string   "guid",                limit: 36, default: "",                    null: false
    t.integer  "member_id",           limit: 4,  default: 0,                     null: false
    t.string   "title",               limit: 10, default: "",                    null: false
    t.string   "initials",            limit: 10, default: "",                    null: false
    t.string   "surname",             limit: 30, default: "",                    null: false
    t.string   "card_number",         limit: 30, default: "",                    null: false
    t.integer  "issue_number",        limit: 4,  default: 0,                     null: false
    t.integer  "card_profile_id",     limit: 4,  default: 0,                     null: false
    t.integer  "status",              limit: 4,  default: 0,                     null: false
    t.boolean  "valid_in_date_range", limit: 1,  default: false,                 null: false
    t.datetime "date_range_start",               default: '1970-01-01 00:00:00', null: false
    t.datetime "date_range_end",                 default: '1970-01-01 00:00:00', null: false
    t.float    "balance_1",           limit: 53, default: 0.0,                   null: false
    t.float    "balance_2",           limit: 53, default: 0.0,                   null: false
    t.float    "balance_3",           limit: 53, default: 0.0,                   null: false
    t.float    "balance_4",           limit: 53, default: 0.0,                   null: false
    t.float    "balance_5",           limit: 53, default: 0.0,                   null: false
    t.datetime "birth_date",                     default: '1970-01-01 00:00:00', null: false
    t.string   "category",            limit: 30, default: "",                    null: false
    t.datetime "timestamp",                                                      null: false
  end

  create_table "card_profiles", force: :cascade do |t|
    t.datetime "created_at",                                                          null: false
    t.datetime "updated_at",                                                          null: false
    t.string   "guid",                    limit: 36,  default: "",                    null: false
    t.string   "name",                    limit: 45,  default: "",                    null: false
    t.string   "description",             limit: 255, default: "",                    null: false
    t.boolean  "valid_in_date_range",     limit: 1,   default: false,                 null: false
    t.datetime "date_range_start",                    default: '1900-01-01 00:00:00', null: false
    t.datetime "date_range_end",                      default: '1900-01-01 00:00:00', null: false
    t.float    "credit_limit_purse_1",    limit: 53,  default: 0.0,                   null: false
    t.float    "credit_limit_purse_2",    limit: 53,  default: 0.0,                   null: false
    t.float    "credit_limit_purse_3",    limit: 53,  default: 0.0,                   null: false
    t.float    "credit_limit_purse_4",    limit: 53,  default: 0.0,                   null: false
    t.float    "credit_limit_purse_5",    limit: 53,  default: 0.0,                   null: false
    t.boolean  "discount_on_overdrawn_1", limit: 1,   default: false,                 null: false
    t.boolean  "discount_on_overdrawn_2", limit: 1,   default: false,                 null: false
    t.boolean  "discount_on_overdrawn_3", limit: 1,   default: false,                 null: false
    t.boolean  "discount_on_overdrawn_4", limit: 1,   default: false,                 null: false
    t.boolean  "discount_on_overdrawn_5", limit: 1,   default: false,                 null: false
    t.boolean  "pay_by_cash",             limit: 1,   default: false,                 null: false
    t.datetime "timestamp",                                                           null: false
  end

  create_table "card_revenues", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "guid",       limit: 36,  default: "", null: false
    t.string   "name",       limit: 30,  default: "", null: false
    t.string   "groups",     limit: 255, default: "", null: false
    t.datetime "timestamp",                           null: false
  end

  create_table "card_systems", force: :cascade do |t|
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
    t.string   "guid",                limit: 36, default: "",                    null: false
    t.boolean  "use_site_id",         limit: 1,  default: false,                 null: false
    t.string   "site_id",             limit: 30, default: "",                    null: false
    t.boolean  "use_issue_number",    limit: 1,  default: false,                 null: false
    t.datetime "default_time_start",             default: '1970-01-01 00:00:00', null: false
    t.datetime "default_time_end",               default: '1970-01-01 00:00:00', null: false
    t.boolean  "use_stock_control",   limit: 1,  default: false,                 null: false
    t.boolean  "use_time_attendance", limit: 1,  default: false,                 null: false
    t.datetime "timestamp",                                                      null: false
  end

  create_table "cashier_transaction_items", force: :cascade do |t|
    t.datetime "created_at",                                                          null: false
    t.datetime "updated_at",                                                          null: false
    t.string   "guid",                     limit: 36, default: "",                    null: false
    t.integer  "trans_id",                 limit: 4,  default: 0,                     null: false
    t.integer  "cashier_id",               limit: 4,  default: 0,                     null: false
    t.integer  "plu_id",                   limit: 4,  default: 0,                     null: false
    t.string   "plu_name",                 limit: 30, default: "",                    null: false
    t.integer  "plu_factor",               limit: 4,  default: 0,                     null: false
    t.integer  "plu_factor_entered",       limit: 4,  default: 0,                     null: false
    t.integer  "plu_price",                limit: 4,  default: 0,                     null: false
    t.integer  "plu_price_level",          limit: 4,  default: 0,                     null: false
    t.integer  "plu_group_id",             limit: 4,  default: 0,                     null: false
    t.integer  "plu_price_level_1",        limit: 4,  default: 0,                     null: false
    t.integer  "plu_cost",                 limit: 4,  default: 0,                     null: false
    t.integer  "vat_id",                   limit: 4,  default: 0,                     null: false
    t.boolean  "void",                     limit: 1,  default: false,                 null: false
    t.datetime "sale_date_time",                      default: '1970-01-01 00:00:00', null: false
    t.integer  "bill_sort_id",             limit: 4,  default: 0,                     null: false
    t.integer  "kp_sort_id",               limit: 4,  default: 0,                     null: false
    t.boolean  "kp_printed",               limit: 1,  default: false,                 null: false
    t.boolean  "condiment",                limit: 1,  default: false,                 null: false
    t.integer  "purse_no",                 limit: 4,  default: 0,                     null: false
    t.integer  "line_amount",              limit: 4,  default: 0,                     null: false
    t.integer  "discounted_amount",        limit: 4,  default: 0,                     null: false
    t.integer  "single_discounted_amount", limit: 4,  default: 0,                     null: false
    t.integer  "nett_amount",              limit: 4,  default: 0,                     null: false
    t.integer  "discount",                 limit: 4,  default: 0,                     null: false
    t.integer  "surcharge_amount",         limit: 4,  default: 0,                     null: false
    t.integer  "vat_amount",               limit: 4,  default: 0,                     null: false
    t.integer  "single_vat_amount",        limit: 4,  default: 0,                     null: false
    t.boolean  "add_surcharge",            limit: 1,  default: false,                 null: false
    t.datetime "TimeStamp",                                                           null: false
  end

  add_index "cashier_transaction_items", ["trans_id"], name: "TRANSUID", using: :btree

  create_table "cashier_transactions", force: :cascade do |t|
    t.datetime "created_at",                                                           null: false
    t.datetime "updated_at",                                                           null: false
    t.string   "guid",                      limit: 36, default: "",                    null: false
    t.string   "site_id",                   limit: 36, default: "",                    null: false
    t.integer  "location_id",               limit: 4,  default: 0,                     null: false
    t.integer  "till_id",                   limit: 4,  default: 0,                     null: false
    t.integer  "tab_id",                    limit: 4,  default: 0,                     null: false
    t.datetime "start_date_time",                      default: '1970-01-01 00:00:00', null: false
    t.datetime "end_date_time",                        default: '1970-01-01 00:00:00', null: false
    t.integer  "receipt_no",                limit: 4,  default: 0,                     null: false
    t.integer  "cashier_id",                limit: 4,  default: 0,                     null: false
    t.string   "cashier_name",              limit: 30, default: "",                    null: false
    t.integer  "media_id",                  limit: 4,  default: 0,                     null: false
    t.string   "media_name",                limit: 30, default: "",                    null: false
    t.integer  "total_amount",              limit: 4,  default: 0,                     null: false
    t.integer  "total_discounted_amount",   limit: 4,  default: 0,                     null: false
    t.integer  "total_nett_amount",         limit: 4,  default: 0,                     null: false
    t.integer  "total_vat_amount",          limit: 4,  default: 0,                     null: false
    t.integer  "total_discount",            limit: 4,  default: 0,                     null: false
    t.integer  "total_topup",               limit: 4,  default: 0,                     null: false
    t.integer  "total_paid_out",            limit: 4,  default: 0,                     null: false
    t.integer  "total_surcharge",           limit: 4,  default: 0,                     null: false
    t.integer  "amount_tendered",           limit: 4,  default: 0,                     null: false
    t.integer  "change_given",              limit: 4,  default: 0,                     null: false
    t.boolean  "no_sale",                   limit: 1,  default: false,                 null: false
    t.integer  "card_holder_id",            limit: 4,  default: 0,                     null: false
    t.string   "card_number",               limit: 30, default: "",                    null: false
    t.string   "card_name",                 limit: 30, default: "",                    null: false
    t.integer  "amount_purse_1",            limit: 4,  default: 0,                     null: false
    t.integer  "discounted_amount_purse_1", limit: 4,  default: 0,                     null: false
    t.integer  "nett_amount_purse_1",       limit: 4,  default: 0,                     null: false
    t.integer  "discount_purse_1",          limit: 4,  default: 0,                     null: false
    t.integer  "surcharge_purse_1",         limit: 4,  default: 0,                     null: false
    t.integer  "vat_amount_purse_1",        limit: 4,  default: 0,                     null: false
    t.integer  "start_balance_purse_1",     limit: 4,  default: 0,                     null: false
    t.integer  "end_balance_purse_1",       limit: 4,  default: 0,                     null: false
    t.integer  "amount_purse_2",            limit: 4,  default: 0,                     null: false
    t.integer  "discounted_amount_purse_2", limit: 4,  default: 0,                     null: false
    t.integer  "nett_amount_purse_2",       limit: 4,  default: 0,                     null: false
    t.integer  "discount_purse_2",          limit: 4,  default: 0,                     null: false
    t.integer  "surcharge_purse_2",         limit: 4,  default: 0,                     null: false
    t.integer  "vat_amount_purse_2",        limit: 4,  default: 0,                     null: false
    t.integer  "start_balance_purse_2",     limit: 4,  default: 0,                     null: false
    t.integer  "end_balance_purse_2",       limit: 4,  default: 0,                     null: false
    t.integer  "amount_purse_3",            limit: 4,  default: 0,                     null: false
    t.integer  "discounted_amount_purse_3", limit: 4,  default: 0,                     null: false
    t.integer  "nett_amount_purse_3",       limit: 4,  default: 0,                     null: false
    t.integer  "discount_purse_3",          limit: 4,  default: 0,                     null: false
    t.integer  "surcharge_purse_3",         limit: 4,  default: 0,                     null: false
    t.integer  "vat_amount_purse_3",        limit: 4,  default: 0,                     null: false
    t.integer  "start_balance_3",           limit: 4,  default: 0,                     null: false
    t.integer  "end_balance_3",             limit: 4,  default: 0,                     null: false
    t.integer  "amount_purse_4",            limit: 4,  default: 0,                     null: false
    t.integer  "discounted_amount_purse_4", limit: 4,  default: 0,                     null: false
    t.integer  "nett_amount_purse_4",       limit: 4,  default: 0,                     null: false
    t.integer  "discount_purse_4",          limit: 4,  default: 0,                     null: false
    t.integer  "surcharge_purse_4",         limit: 4,  default: 0,                     null: false
    t.integer  "vat_amount_purse_4",        limit: 4,  default: 0,                     null: false
    t.integer  "start_balance_4",           limit: 4,  default: 0,                     null: false
    t.integer  "end_balance_4",             limit: 4,  default: 0,                     null: false
    t.integer  "amount_purse_5",            limit: 4,  default: 0,                     null: false
    t.integer  "discounted_amount_purse_5", limit: 4,  default: 0,                     null: false
    t.integer  "nett_amount_purse_5",       limit: 4,  default: 0,                     null: false
    t.integer  "discount_purse_5",          limit: 4,  default: 0,                     null: false
    t.integer  "surcharge_purse_5",         limit: 4,  default: 0,                     null: false
    t.integer  "vat_amount_purse_5",        limit: 4,  default: 0,                     null: false
    t.integer  "start_balance_5",           limit: 4,  default: 0,                     null: false
    t.integer  "end_balance_5",             limit: 4,  default: 0,                     null: false
    t.boolean  "did_not_make_it",           limit: 1,  default: false,                 null: false
    t.boolean  "finalised",                 limit: 1,  default: false,                 null: false
    t.datetime "TimeStamp",                                                            null: false
  end

  add_index "cashier_transactions", ["card_holder_id"], name: "CARDUID", using: :btree

  create_table "cashiers", force: :cascade do |t|
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.string   "guid",                       limit: 36,  default: "",    null: false
    t.string   "name",                       limit: 30,  default: "",    null: false
    t.string   "key_code",                   limit: 30,  default: "",    null: false
    t.string   "functions_1",                limit: 255, default: "",    null: false
    t.string   "functions_2",                limit: 255, default: "",    null: false
    t.string   "functions_3",                limit: 255, default: "",    null: false
    t.string   "pin",                        limit: 10,  default: "",    null: false
    t.boolean  "needs_sign_in",              limit: 1,   default: false, null: false
    t.float    "regular_wage",               limit: 53,  default: 0.0,   null: false
    t.float    "overtime_wage_1",            limit: 53,  default: 0.0,   null: false
    t.float    "overtime_wage_2",            limit: 53,  default: 0.0,   null: false
    t.integer  "max_day_seconds",            limit: 4,   default: 0,     null: false
    t.integer  "max_day_overtime_1_seconds", limit: 4,   default: 0,     null: false
    t.datetime "timestamp",                                              null: false
  end

  create_table "email_addresses", force: :cascade do |t|
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "guid",        limit: 36,  default: "",    null: false
    t.integer  "member_id",   limit: 4,   default: 0,     null: false
    t.string   "member_guid", limit: 45,  default: "",    null: false
    t.string   "email",       limit: 100, default: "",    null: false
    t.boolean  "is_default",  limit: 1,   default: false, null: false
    t.datetime "TimeStamp",                               null: false
  end

  create_table "function_buttons", force: :cascade do |t|
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "guid",       limit: 36, default: "",    null: false
    t.string   "name",       limit: 30, default: "",    null: false
    t.boolean  "function",   limit: 1,  default: false, null: false
    t.boolean  "code",       limit: 1,  default: false, null: false
    t.datetime "TimeStamp",                             null: false
  end

  create_table "function_items", force: :cascade do |t|
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
    t.string   "guid",                 limit: 36, default: "",                    null: false
    t.integer  "function_id",          limit: 4,  default: 0,                     null: false
    t.string   "function_name",        limit: 30, default: "",                    null: false
    t.integer  "cashier_id",           limit: 4,  default: 0,                     null: false
    t.string   "cashier_name",         limit: 30, default: "",                    null: false
    t.integer  "media_id",             limit: 4,  default: 0,                     null: false
    t.string   "media_name",           limit: 30, default: "",                    null: false
    t.integer  "linked_plu_id",        limit: 4,  default: 0,                     null: false
    t.string   "linked_plu_name",      limit: 30, default: "",                    null: false
    t.float    "linked_plu_factor",    limit: 53, default: 0.0,                   null: false
    t.float    "linked_plu_price",     limit: 53, default: 0.0,                   null: false
    t.float    "linked_plu_discount",  limit: 53, default: 0.0,                   null: false
    t.float    "linked_plu_surcharge", limit: 53, default: 0.0,                   null: false
    t.integer  "linked_plu_group_id",  limit: 4,  default: 0,                     null: false
    t.integer  "ticket_no",            limit: 4,  default: 0,                     null: false
    t.integer  "receipt_no",           limit: 4,  default: 0,                     null: false
    t.datetime "start_date",                      default: '1970-01-01 00:00:00', null: false
    t.integer  "card_holder_id",       limit: 4,  default: 0,                     null: false
    t.string   "card_number",          limit: 30, default: "",                    null: false
    t.string   "card_name",            limit: 30, default: "",                    null: false
    t.boolean  "paid",                 limit: 1,  default: false,                 null: false
    t.datetime "TimeStamp",                                                       null: false
  end

  create_table "functions", force: :cascade do |t|
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "guid",            limit: 36, default: "",    null: false
    t.string   "name",            limit: 30, default: "",    null: false
    t.integer  "linked_plu_id",   limit: 4,  default: 0,     null: false
    t.string   "linked_plu_name", limit: 30, default: "",    null: false
    t.integer  "max_sales",       limit: 4,  default: 0,     null: false
    t.integer  "current_sales",   limit: 4,  default: 0,     null: false
    t.boolean  "debit_at_once",   limit: 1,  default: false, null: false
    t.string   "function_text_1", limit: 55, default: "",    null: false
    t.string   "function_text_2", limit: 55, default: "",    null: false
    t.string   "function_text_3", limit: 55, default: "",    null: false
    t.string   "function_text_4", limit: 55, default: "",    null: false
    t.string   "function_text_5", limit: 55, default: "",    null: false
    t.boolean  "finalised",       limit: 1,  default: false, null: false
    t.datetime "TimeStamp",                                  null: false
  end

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "guid",              limit: 36, default: "",  null: false
    t.string   "name",              limit: 30, default: "",  null: false
    t.float    "surcharge_percent", limit: 53, default: 0.0, null: false
    t.datetime "TimeStamp",                                  null: false
  end

  create_table "info_texts", force: :cascade do |t|
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "guid",           limit: 36,  default: "",    null: false
    t.string   "name",           limit: 30,  default: "",    null: false
    t.integer  "till_id",        limit: 4,   default: 0,     null: false
    t.string   "text",           limit: 255, default: "",    null: false
    t.boolean  "bold",           limit: 1,   default: false, null: false
    t.boolean  "underline",      limit: 1,   default: false, null: false
    t.boolean  "double_width",   limit: 1,   default: false, null: false
    t.boolean  "double_height",  limit: 1,   default: false, null: false
    t.boolean  "quadruple",      limit: 1,   default: false, null: false
    t.boolean  "center_aligned", limit: 1,   default: false, null: false
    t.boolean  "right_aligned",  limit: 1,   default: false, null: false
    t.datetime "TimeStamp",                                  null: false
  end

  create_table "kp_prints", force: :cascade do |t|
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
    t.string   "guid",           limit: 36,         default: "",                    null: false
    t.datetime "date_received",                     default: '1970-01-01 00:00:00', null: false
    t.datetime "date_processed",                    default: '1970-01-01 00:00:00', null: false
    t.integer  "printer_number", limit: 4,          default: 0,                     null: false
    t.integer  "processed",      limit: 1,          default: 0,                     null: false
    t.binary   "data",           limit: 4294967295,                                 null: false
    t.datetime "TimeStamp",                                                         null: false
  end

  create_table "licences", force: :cascade do |t|
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "guid",       limit: 36,       default: "", null: false
    t.string   "name",       limit: 30,       default: "", null: false
    t.binary   "file_data",  limit: 16777215
    t.integer  "file_size",  limit: 4,        default: 0,  null: false
    t.datetime "TimeStamp",                                null: false
  end

  add_index "licences", ["id"], name: "id_UNIQUE", unique: true, using: :btree

  create_table "macros", force: :cascade do |t|
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "guid",          limit: 36,  default: "", null: false
    t.string   "name",          limit: 30,  default: "", null: false
    t.string   "function_keys", limit: 255, default: "", null: false
    t.datetime "TimeStamp",                              null: false
  end

  create_table "medias", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "guid",            limit: 36, default: "",    null: false
    t.string   "name",            limit: 30, default: "",    null: false
    t.boolean  "open_drawer",     limit: 1,  default: false, null: false
    t.boolean  "use_chip_pin",    limit: 1,  default: false, null: false
    t.float    "media_surcharge", limit: 53, default: 0.0,   null: false
    t.datetime "TimeStamp",                                  null: false
  end

  create_table "member_categories", force: :cascade do |t|
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "guid",       limit: 36, default: "", null: false
    t.string   "name",       limit: 30, default: "", null: false
    t.datetime "TimeStamp",                          null: false
  end

  create_table "members", force: :cascade do |t|
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at"
    t.string   "guid",                limit: 36, default: "",                    null: false
    t.string   "code",                limit: 4,  default: "",                    null: false
    t.string   "prefix",              limit: 10, default: "",                    null: false
    t.string   "title",               limit: 10, default: "",                    null: false
    t.string   "initials",            limit: 10, default: "",                    null: false
    t.string   "forename",            limit: 30, default: "",                    null: false
    t.string   "surname",             limit: 30, default: "",                    null: false
    t.string   "suffix",              limit: 10, default: "",                    null: false
    t.integer  "address_id",          limit: 4,  default: 0,                     null: false
    t.integer  "billing_address_id",  limit: 4,  default: 0,                     null: false
    t.integer  "category_id",         limit: 4,  default: 0,                     null: false
    t.string   "formal_salutation",   limit: 45, default: "",                    null: false
    t.string   "informal_salutation", limit: 45, default: "",                    null: false
    t.boolean  "male",                limit: 1,  default: true,                  null: false
    t.boolean  "master",              limit: 1,  default: true,                  null: false
    t.boolean  "direct_debit",        limit: 1,  default: false,                 null: false
    t.datetime "birth_date",                     default: '1900-01-01 00:00:00', null: false
    t.datetime "join_date",                      default: '1900-01-01 00:00:00', null: false
    t.datetime "left_date",                      default: '1900-01-01 00:00:00', null: false
    t.boolean  "in_use",              limit: 1,  default: true,                  null: false
    t.datetime "TimeStamp",                                                      null: false
  end

  add_index "members", ["id"], name: "id_UNIQUE", unique: true, using: :btree

  create_table "modifiers", force: :cascade do |t|
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.string   "guid",        limit: 36, default: "",                    null: false
    t.string   "name",        limit: 30, default: "",                    null: false
    t.boolean  "function",    limit: 1,  default: false,                 null: false
    t.boolean  "mechanism",   limit: 1,  default: false,                 null: false
    t.float    "percentage",  limit: 53, default: 0.0,                   null: false
    t.integer  "plus_minus",  limit: 4,  default: 0,                     null: false
    t.integer  "change_from", limit: 4,  default: 0,                     null: false
    t.integer  "change_to",   limit: 4,  default: 0,                     null: false
    t.integer  "plu_offset",  limit: 4,  default: 0,                     null: false
    t.datetime "time_from_1",            default: '1970-01-01 00:00:00', null: false
    t.datetime "time_to_1",              default: '1970-01-01 00:00:00', null: false
    t.datetime "time_from_2",            default: '1970-01-01 00:00:00', null: false
    t.datetime "time_to_2",              default: '1970-01-01 00:00:00', null: false
    t.datetime "time_from_3",            default: '1970-01-01 00:00:00', null: false
    t.datetime "time_to_3",              default: '1970-01-01 00:00:00', null: false
    t.datetime "time_from_4",            default: '1970-01-01 00:00:00', null: false
    t.datetime "time_to_4",              default: '1970-01-01 00:00:00', null: false
    t.datetime "time_from_5",            default: '1970-01-01 00:00:00', null: false
    t.datetime "time_to_5",              default: '1970-01-01 00:00:00', null: false
    t.boolean  "monday",      limit: 1,  default: false,                 null: false
    t.boolean  "tuesday",     limit: 1,  default: false,                 null: false
    t.boolean  "wednesday",   limit: 1,  default: false,                 null: false
    t.boolean  "thursday",    limit: 1,  default: false,                 null: false
    t.boolean  "friday",      limit: 1,  default: false,                 null: false
    t.boolean  "saturday",    limit: 1,  default: false,                 null: false
    t.boolean  "sunday",      limit: 1,  default: false,                 null: false
    t.datetime "TimeStamp",                                              null: false
  end

  create_table "plu_images", force: :cascade do |t|
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "guid",       limit: 36,       default: "", null: false
    t.string   "image_name", limit: 50,       default: "", null: false
    t.integer  "image_size", limit: 3,        default: 0,  null: false
    t.binary   "image_data", limit: 16777215,              null: false
    t.datetime "TimeStamp",                                null: false
  end

  create_table "plus", force: :cascade do |t|
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "guid",                  limit: 36,  default: "",    null: false
    t.string   "name",                  limit: 30,  default: "",    null: false
    t.float    "price_1",               limit: 53,  default: 0.0,   null: false
    t.float    "price_2",               limit: 53,  default: 0.0,   null: false
    t.float    "price_3",               limit: 53,  default: 0.0,   null: false
    t.float    "price_4",               limit: 53,  default: 0.0,   null: false
    t.float    "price_5",               limit: 53,  default: 0.0,   null: false
    t.float    "price_6",               limit: 53,  default: 0.0,   null: false
    t.integer  "group_id",              limit: 4,   default: 0,     null: false
    t.float    "plu_cost",              limit: 53,  default: 0.0,   null: false
    t.integer  "vat_id",                limit: 4,   default: 0,     null: false
    t.integer  "stock_mode",            limit: 4,   default: 0,     null: false
    t.string   "plu_linked",            limit: 128, default: "",    null: false
    t.string   "purchase_unit_id",      limit: 128, default: "",    null: false
    t.string   "recipe_id",             limit: 128, default: "",    null: false
    t.integer  "purse_no",              limit: 4,   default: 1,     null: false
    t.integer  "receipt_sort_no",       limit: 4,   default: 0,     null: false
    t.integer  "kp_printer",            limit: 4,   default: 0,     null: false
    t.integer  "kp_sort_no",            limit: 4,   default: 0,     null: false
    t.string   "barcode",               limit: 30,  default: "",    null: false
    t.float    "stock",                 limit: 53,  default: 0.0,   null: false
    t.float    "minimum_stock",         limit: 53,  default: 0.0,   null: false
    t.integer  "price_type",            limit: 4,   default: 0,     null: false
    t.boolean  "condiment",             limit: 1,   default: false, null: false
    t.string   "modifiers",             limit: 128, default: "",    null: false
    t.integer  "selection_window_1_id", limit: 4,   default: 0,     null: false
    t.integer  "selection_window_2_id", limit: 4,   default: 0,     null: false
    t.integer  "selection_window_3_id", limit: 4,   default: 0,     null: false
    t.integer  "selection_window_4_id", limit: 4,   default: 0,     null: false
    t.integer  "selection_window_5_id", limit: 4,   default: 0,     null: false
    t.integer  "back_colour",           limit: 4,   default: 0,     null: false
    t.integer  "font_colour",           limit: 4,   default: 0,     null: false
    t.boolean  "in_use",                limit: 1,   default: true,  null: false
    t.datetime "TimeStamp",                                         null: false
  end

  create_table "pop_up_windows", force: :cascade do |t|
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "guid",        limit: 36,  default: "",   null: false
    t.string   "name",        limit: 30,  default: "",   null: false
    t.string   "plu_id_list", limit: 255, default: "",   null: false
    t.boolean  "show_price",  limit: 1,   default: true, null: false
    t.datetime "TimeStamp",                              null: false
  end

  create_table "purchase_order_items", force: :cascade do |t|
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "guid",                     limit: 36, default: "",    null: false
    t.integer  "po_id",                    limit: 4,  default: 0,     null: false
    t.integer  "plu_id",                   limit: 4,  default: 0,     null: false
    t.string   "plu_name",                 limit: 30, default: "",    null: false
    t.float    "plu_unit_factor_ordered",  limit: 53, default: 0.0,   null: false
    t.float    "plu_unit_factor_received", limit: 53, default: 0.0,   null: false
    t.float    "plu_unit_price",           limit: 53, default: 0.0,   null: false
    t.integer  "plu_units_ordered_id",     limit: 4,  default: 0,     null: false
    t.integer  "plu_units_received_id",    limit: 4,  default: 0,     null: false
    t.boolean  "void",                     limit: 1,  default: false, null: false
    t.integer  "vat_id",                   limit: 4,  default: 0,     null: false
    t.datetime "TimeStamp",                                           null: false
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.string   "guid",          limit: 36, default: "",                    null: false
    t.string   "po_no",         limit: 30, default: "",                    null: false
    t.string   "so_no",         limit: 30, default: "",                    null: false
    t.datetime "order_date",               default: '1970-01-01 00:00:00', null: false
    t.datetime "delivery_date",            default: '1970-01-01 00:00:00', null: false
    t.integer  "supplier_id",   limit: 4,  default: 0,                     null: false
    t.integer  "cashier_id",    limit: 4,  default: 0,                     null: false
    t.float    "cost",          limit: 53, default: 0.0,                   null: false
    t.float    "vat_amount",    limit: 53, default: 0.0,                   null: false
    t.integer  "open",          limit: 4,  default: 1,                     null: false
    t.datetime "TimeStamp",                                                null: false
  end

  create_table "rp_sort_groups", force: :cascade do |t|
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "guid",       limit: 36, default: "", null: false
    t.string   "name",       limit: 30, default: "", null: false
    t.datetime "TimeStamp",                          null: false
  end

  create_table "saved_stock_check", force: :cascade do |t|
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.string   "guid",              limit: 36,  default: "",                    null: false
    t.datetime "start_date",                    default: '1970-01-01 00:00:00', null: false
    t.integer  "cashier_id",        limit: 4,   default: 0,                     null: false
    t.integer  "current_trans_id",  limit: 4,   default: 0,                     null: false
    t.integer  "last_allowance_id", limit: 4,   default: 0,                     null: false
    t.string   "revenues",          limit: 30,  default: "",                    null: false
    t.string   "groups",            limit: 255, default: "",                    null: false
    t.datetime "TimeStamp",                                                     null: false
  end

  create_table "saved_stock_check_items", force: :cascade do |t|
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "guid",                   limit: 36, default: "",  null: false
    t.integer  "stock_check_id",         limit: 4,  default: 0,   null: false
    t.integer  "plu_id",                 limit: 4,  default: 0,   null: false
    t.string   "plu_name",               limit: 30, default: "",  null: false
    t.integer  "plu_group_id",           limit: 4,  default: 0,   null: false
    t.float    "plu_unit_count",         limit: 53, default: 0.0, null: false
    t.float    "plu_unit_closing_count", limit: 53, default: 0.0, null: false
    t.float    "plu_unit_user_count",    limit: 53, default: 0.0, null: false
    t.float    "plu_unit_price",         limit: 53, default: 0.0, null: false
    t.float    "plu_unit_cost_price",    limit: 53, default: 0.0, null: false
    t.integer  "vat_id",                 limit: 4,  default: 0,   null: false
    t.float    "plu_units_quantity_1",   limit: 53, default: 0.0, null: false
    t.float    "plu_units_quantity_2",   limit: 53, default: 0.0, null: false
    t.float    "plu_units_quantity_3",   limit: 53, default: 0.0, null: false
    t.float    "plu_units_quantity_4",   limit: 53, default: 0.0, null: false
    t.integer  "stock_media_1_id",       limit: 4,  default: 0,   null: false
    t.string   "stock_media_1_name",     limit: 30, default: "",  null: false
    t.float    "stock_media_1_count",    limit: 53, default: 0.0, null: false
    t.integer  "stock_media_2_id",       limit: 4,  default: 0,   null: false
    t.string   "stock_media_2_name",     limit: 30, default: "",  null: false
    t.float    "stock_media_2_count",    limit: 53, default: 0.0, null: false
    t.datetime "TimeStamp",                                       null: false
  end

  create_table "select_lite", force: :cascade do |t|
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
    t.string   "guid",           limit: 36, default: "",                    null: false
    t.integer  "trans_id",       limit: 4,  default: 0,                     null: false
    t.integer  "card_holder_id", limit: 4,  default: 0,                     null: false
    t.boolean  "finalised",      limit: 1,  default: false,                 null: false
    t.integer  "ball_count_1",   limit: 4,  default: 0,                     null: false
    t.float    "ball_cost_1",    limit: 53, default: 0.0,                   null: false
    t.boolean  "used_1",         limit: 1,  default: false,                 null: false
    t.datetime "used_date_1",               default: '1970-01-01 00:00:00', null: false
    t.integer  "ball_count_2",   limit: 4,  default: 0,                     null: false
    t.float    "ball_cost_2",    limit: 53, default: 0.0,                   null: false
    t.boolean  "used_2",         limit: 1,  default: false,                 null: false
    t.datetime "used_date_2",               default: '1970-01-01 00:00:00', null: false
    t.integer  "ball_count_3",   limit: 4,  default: 0,                     null: false
    t.float    "ball_cost_3",    limit: 53, default: 0.0,                   null: false
    t.boolean  "used_3",         limit: 1,  default: false,                 null: false
    t.datetime "used_date_3",               default: '1970-01-01 00:00:00', null: false
    t.datetime "TimeStamp",                                                 null: false
  end

  create_table "select_lite_plus", force: :cascade do |t|
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "guid",       limit: 36, default: "", null: false
    t.integer  "plu_id",     limit: 4,  default: 0,  null: false
    t.integer  "ball_count", limit: 4,  default: 0,  null: false
    t.datetime "TimeStamp",                          null: false
  end

  create_table "selection_windows", force: :cascade do |t|
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "guid",        limit: 36,  default: "",   null: false
    t.string   "name",        limit: 30,  default: "",   null: false
    t.string   "plu_id_list", limit: 255, default: "",   null: false
    t.boolean  "show_price",  limit: 1,   default: true, null: false
    t.datetime "TimeStamp",                              null: false
  end

  create_table "stock_check", force: :cascade do |t|
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
    t.string   "guid",             limit: 36,  default: "",                    null: false
    t.datetime "start_date",                   default: '1970-01-01 00:00:00', null: false
    t.integer  "cashier_id",       limit: 4,   default: 0,                     null: false
    t.boolean  "open",             limit: 1,   default: true,                  null: false
    t.boolean  "full_stock_check", limit: 1,   default: false,                 null: false
    t.integer  "current_trans_id", limit: 4,   default: 0,                     null: false
    t.string   "revenues",         limit: 30,  default: "",                    null: false
    t.string   "groups",           limit: 255, default: "",                    null: false
    t.datetime "TimeStamp",                                                    null: false
  end

  create_table "stock_check_items", force: :cascade do |t|
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "guid",                   limit: 36, default: "",  null: false
    t.integer  "plu_id",                 limit: 4,  default: 0,   null: false
    t.string   "plu_name",               limit: 30, default: "",  null: false
    t.integer  "plu_group_id",           limit: 4,  default: 0,   null: false
    t.float    "plu_unit_count",         limit: 53, default: 0.0, null: false
    t.float    "plu_unit_closing_count", limit: 53, default: 0.0, null: false
    t.float    "plu_unit_user_count",    limit: 53, default: 0.0, null: false
    t.float    "plu_unit_price",         limit: 53, default: 0.0, null: false
    t.float    "plu_unit_cost_price",    limit: 53, default: 0.0, null: false
    t.integer  "vat_id",                 limit: 4,  default: 0,   null: false
    t.float    "plu_units_quantity_1",   limit: 53, default: 0.0, null: false
    t.float    "plu_units_quantity_2",   limit: 53, default: 0.0, null: false
    t.float    "plu_units_quantity_3",   limit: 53, default: 0.0, null: false
    t.float    "plu_units_quantity_4",   limit: 53, default: 0.0, null: false
    t.integer  "stock_media_1_id",       limit: 4,  default: 0,   null: false
    t.string   "stock_media_1_name",     limit: 30, default: "",  null: false
    t.float    "stock_media_1_count",    limit: 53, default: 0.0, null: false
    t.integer  "stock_media_2_id",       limit: 4,  default: 0,   null: false
    t.string   "stock_media_2_name",     limit: 30, default: "",  null: false
    t.float    "stock_media_2_count",    limit: 53, default: 0.0, null: false
    t.datetime "TimeStamp",                                       null: false
  end

  create_table "stock_medias", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "guid",             limit: 36, default: "",    null: false
    t.string   "name",             limit: 30, default: "",    null: false
    t.boolean  "open_drawer",      limit: 1,  default: false, null: false
    t.boolean  "use_chip_pin",     limit: 1,  default: false, null: false
    t.float    "media_surcharge",  limit: 53, default: 0.0,   null: false
    t.boolean  "stock_adjustment", limit: 1,  default: false, null: false
    t.datetime "TimeStamp",                                   null: false
  end

  create_table "stock_units", force: :cascade do |t|
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "guid",                limit: 36, default: "",  null: false
    t.string   "name",                limit: 30, default: "",  null: false
    t.float    "no_of_selling_units", limit: 53, default: 0.0, null: false
    t.datetime "TimeStamp",                                    null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "guid",          limit: 36,    default: "", null: false
    t.string   "name",          limit: 30,    default: "", null: false
    t.string   "address_1",     limit: 30,    default: "", null: false
    t.string   "address_2",     limit: 30,    default: "", null: false
    t.string   "address_3",     limit: 30,    default: "", null: false
    t.string   "address_4",     limit: 30,    default: "", null: false
    t.string   "post_code",     limit: 30,    default: "", null: false
    t.string   "telephone",     limit: 30,    default: "", null: false
    t.string   "fax",           limit: 30,    default: "", null: false
    t.string   "email",         limit: 50,    default: "", null: false
    t.string   "rep_name",      limit: 30,    default: "", null: false
    t.string   "rep_telephone", limit: 30,    default: "", null: false
    t.string   "rep_fax",       limit: 30,    default: "", null: false
    t.string   "rep_email",     limit: 50,    default: "", null: false
    t.text     "supplied_plus", limit: 65535,              null: false
    t.datetime "TimeStamp",                                null: false
  end

  create_table "tab_transaction_items", force: :cascade do |t|
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.string   "guid",               limit: 36, default: "",                    null: false
    t.integer  "tab_id",             limit: 4,  default: 0,                     null: false
    t.integer  "cashier_id",         limit: 4,  default: 0,                     null: false
    t.string   "cashier_name",       limit: 30, default: "",                    null: false
    t.integer  "plu_id",             limit: 4,  default: 0,                     null: false
    t.string   "plu_name",           limit: 30, default: "",                    null: false
    t.float    "plu_factor",         limit: 53, default: 0.0,                   null: false
    t.float    "plu_factor_entered", limit: 53, default: 0.0,                   null: false
    t.float    "plu_price",          limit: 53, default: 0.0,                   null: false
    t.integer  "plu_price_level",    limit: 4,  default: 0,                     null: false
    t.integer  "plu_group_id",       limit: 4,  default: 0,                     null: false
    t.float    "plu_price_level_1",  limit: 53, default: 0.0,                   null: false
    t.float    "plu_cost",           limit: 53, default: 0.0,                   null: false
    t.integer  "vat_id",             limit: 4,  default: 0,                     null: false
    t.boolean  "void",               limit: 1,  default: false,                 null: false
    t.datetime "sale_date_time",                default: '1970-01-01 00:00:00', null: false
    t.integer  "bill_sort_id",       limit: 4,  default: 0,                     null: false
    t.integer  "kp_sort_id",         limit: 4,  default: 0,                     null: false
    t.boolean  "kp_printed",         limit: 1,  default: false,                 null: false
    t.boolean  "condiment",          limit: 1,  default: false,                 null: false
    t.integer  "purse_no",           limit: 4,  default: 0,                     null: false
    t.float    "discount",           limit: 53, default: 0.0,                   null: false
    t.float    "surcharge_amount",   limit: 53, default: 0.0,                   null: false
    t.boolean  "add_surcharge",      limit: 1,  default: false,                 null: false
    t.boolean  "summarise_item",     limit: 1,  default: false,                 null: false
    t.datetime "TimeStamp",                                                     null: false
  end

  create_table "tab_transactions", force: :cascade do |t|
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.string   "guid",            limit: 36,  default: "",                    null: false
    t.string   "tab_name",        limit: 30,  default: "",                    null: false
    t.integer  "cashier_id",      limit: 4,   default: 0,                     null: false
    t.datetime "start_date_time",             default: '1970-01-01 00:00:00', null: false
    t.float    "amount",          limit: 53,  default: 0.0,                   null: false
    t.integer  "card_holder_id",  limit: 4,   default: 0,                     null: false
    t.string   "saved_split",     limit: 255, default: "",                    null: false
    t.float    "surcharge",       limit: 53,  default: 0.0,                   null: false
    t.float    "part_payment",    limit: 53,  default: 0.0,                   null: false
    t.datetime "end_date_time",               default: '1970-01-01 00:00:00', null: false
    t.float    "warn_limit",      limit: 53,  default: 0.0,                   null: false
    t.float    "warn_percent",    limit: 53,  default: 0.0,                   null: false
    t.boolean  "finalised",       limit: 1,   default: false,                 null: false
    t.datetime "TimeStamp",                                                   null: false
  end

  create_table "telephone_numbers", force: :cascade do |t|
    t.datetime "created_at",                                  null: false
    t.datetime "updated_At",                                  null: false
    t.string   "guid",                limit: 36, default: "", null: false
    t.integer  "telephone_type_id",   limit: 4,  default: 0,  null: false
    t.string   "telephone_type_guid", limit: 45, default: "", null: false
    t.string   "telephone_number",    limit: 45, default: "", null: false
    t.datetime "TimeStamp",                                   null: false
  end

  create_table "telephone_types", force: :cascade do |t|
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "guid",       limit: 36, default: "", null: false
    t.string   "name",       limit: 45, default: "", null: false
    t.datetime "TimeStamp",                          null: false
  end

  create_table "temp_card_revenues", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "guid",       limit: 36,  default: "", null: false
    t.string   "name",       limit: 30,  default: "", null: false
    t.string   "groups",     limit: 255, default: "", null: false
    t.datetime "timestamp",                           null: false
  end

  create_table "till_groups", force: :cascade do |t|
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "guid",         limit: 36, default: "", null: false
    t.string   "name",         limit: 50, default: "", null: false
    t.string   "till_id_list", limit: 30, default: "", null: false
    t.datetime "TimeStamp",                            null: false
  end

  create_table "till_infos", force: :cascade do |t|
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
    t.string   "guid",                         limit: 36,    default: "",    null: false
    t.string   "name",                         limit: 30,    default: "",    null: false
    t.integer  "till_id",                      limit: 4,     default: 0,     null: false
    t.integer  "last_z_transaction",           limit: 4,     default: 0,     null: false
    t.integer  "last_z_report_counter",        limit: 4,     default: 0,     null: false
    t.boolean  "locked",                       limit: 1,     default: false, null: false
    t.boolean  "change_due",                   limit: 1,     default: false, null: false
    t.text     "change_data",                  limit: 65535,                 null: false
    t.boolean  "new_journal_on_startup",       limit: 1,     default: false, null: false
    t.boolean  "allow_topup_purse_1",          limit: 1,     default: true,  null: false
    t.boolean  "allow_topup_purse_2",          limit: 1,     default: false, null: false
    t.boolean  "allow_topup_purse_3",          limit: 1,     default: false, null: false
    t.boolean  "allow_topup_purse_4",          limit: 1,     default: false, null: false
    t.boolean  "allow_topup_purse_5",          limit: 1,     default: false, null: false
    t.string   "purse_1_name",                 limit: 30,    default: "",    null: false
    t.string   "purse_2_name",                 limit: 30,    default: "",    null: false
    t.string   "purse_3_name",                 limit: 30,    default: "",    null: false
    t.string   "purse_4_name",                 limit: 30,    default: "",    null: false
    t.string   "purse_5_name",                 limit: 30,    default: "",    null: false
    t.boolean  "auto_surcharge",               limit: 1,     default: false, null: false
    t.string   "version",                      limit: 10,    default: "",    null: false
    t.boolean  "compulsory_media_declaration", limit: 1,     default: false, null: false
    t.datetime "TimeStamp",                                                  null: false
  end

  create_table "time_attendances", force: :cascade do |t|
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.string   "guid",                       limit: 36, default: "",                    null: false
    t.integer  "till_id",                    limit: 4,  default: 0,                     null: false
    t.integer  "cashier_id",                 limit: 4,  default: 0,                     null: false
    t.string   "cashier_name",               limit: 30, default: "",                    null: false
    t.integer  "cashier_group_id",           limit: 4,  default: 0,                     null: false
    t.integer  "cashier_action",             limit: 4,  default: 0,                     null: false
    t.datetime "action_date",                           default: '1970-01-01 00:00:00', null: false
    t.float    "regular_wage",               limit: 53, default: 0.0,                   null: false
    t.float    "overtime_wage_1",            limit: 53, default: 0.0,                   null: false
    t.float    "overtime_wage_2",            limit: 53, default: 0.0,                   null: false
    t.integer  "max_day_seconds",            limit: 4,  default: 0,                     null: false
    t.integer  "max_day_overtime_1_seconds", limit: 4,  default: 0,                     null: false
    t.datetime "TimeStamp",                                                             null: false
  end

  create_table "transaction_items", force: :cascade do |t|
    t.datetime "created_at",                                                          null: false
    t.datetime "updated_at",                                                          null: false
    t.string   "guid",                     limit: 36, default: "",                    null: false
    t.integer  "trans_id",                 limit: 4,  default: 0,                     null: false
    t.integer  "cashier_id",               limit: 4,  default: 0,                     null: false
    t.integer  "plu_id",                   limit: 4,  default: 0,                     null: false
    t.string   "plu_name",                 limit: 30, default: "",                    null: false
    t.integer  "plu_factor",               limit: 4,  default: 0,                     null: false
    t.integer  "plu_factor_entered",       limit: 4,  default: 0,                     null: false
    t.integer  "plu_price",                limit: 4,  default: 0,                     null: false
    t.integer  "plu_price_level",          limit: 4,  default: 0,                     null: false
    t.integer  "plu_group_id",             limit: 4,  default: 0,                     null: false
    t.integer  "plu_price_level_1",        limit: 4,  default: 0,                     null: false
    t.integer  "plu_cost",                 limit: 4,  default: 0,                     null: false
    t.integer  "vat_id",                   limit: 4,  default: 0,                     null: false
    t.boolean  "void",                     limit: 1,  default: false,                 null: false
    t.datetime "sale_date_time",                      default: '1970-01-01 00:00:00', null: false
    t.integer  "bill_sort_id",             limit: 4,  default: 0,                     null: false
    t.integer  "kp_sort_id",               limit: 4,  default: 0,                     null: false
    t.boolean  "kp_printed",               limit: 1,  default: false,                 null: false
    t.boolean  "condiment",                limit: 1,  default: false,                 null: false
    t.integer  "purse_no",                 limit: 4,  default: 0,                     null: false
    t.integer  "line_amount",              limit: 4,  default: 0,                     null: false
    t.integer  "discounted_amount",        limit: 4,  default: 0,                     null: false
    t.integer  "single_discounted_amount", limit: 4,  default: 0,                     null: false
    t.integer  "nett_amount",              limit: 4,  default: 0,                     null: false
    t.integer  "discount",                 limit: 4,  default: 0,                     null: false
    t.integer  "surcharge_amount",         limit: 4,  default: 0,                     null: false
    t.integer  "vat_amount",               limit: 4,  default: 0,                     null: false
    t.integer  "single_vat_amount",        limit: 4,  default: 0,                     null: false
    t.boolean  "add_surcharge",            limit: 1,  default: false,                 null: false
    t.datetime "TimeStamp",                                                           null: false
  end

  add_index "transaction_items", ["trans_id"], name: "TRANSUID", using: :btree

  create_table "transactions", force: :cascade do |t|
    t.datetime "created_at",                                                           null: false
    t.datetime "updated_at",                                                           null: false
    t.string   "guid",                      limit: 36, default: "",                    null: false
    t.string   "site_id",                   limit: 36, default: "",                    null: false
    t.integer  "location_id",               limit: 4,  default: 0,                     null: false
    t.integer  "till_id",                   limit: 4,  default: 0,                     null: false
    t.integer  "tab_id",                    limit: 4,  default: 0,                     null: false
    t.datetime "start_date_time",                      default: '1970-01-01 00:00:00', null: false
    t.datetime "end_date_time",                        default: '1970-01-01 00:00:00', null: false
    t.integer  "receipt_no",                limit: 4,  default: 0,                     null: false
    t.integer  "cashier_id",                limit: 4,  default: 0,                     null: false
    t.string   "cashier_name",              limit: 30, default: "",                    null: false
    t.integer  "media_id",                  limit: 4,  default: 0,                     null: false
    t.string   "media_name",                limit: 30, default: "",                    null: false
    t.integer  "total_amount",              limit: 4,  default: 0,                     null: false
    t.integer  "total_discounted_amount",   limit: 4,  default: 0,                     null: false
    t.integer  "total_nett_amount",         limit: 4,  default: 0,                     null: false
    t.integer  "total_vat_amount",          limit: 4,  default: 0,                     null: false
    t.integer  "total_discount",            limit: 4,  default: 0,                     null: false
    t.integer  "total_topup",               limit: 4,  default: 0,                     null: false
    t.integer  "total_paid_out",            limit: 4,  default: 0,                     null: false
    t.integer  "total_surcharge",           limit: 4,  default: 0,                     null: false
    t.integer  "amount_tendered",           limit: 4,  default: 0,                     null: false
    t.integer  "change_given",              limit: 4,  default: 0,                     null: false
    t.boolean  "no_sale",                   limit: 1,  default: false,                 null: false
    t.integer  "card_holder_id",            limit: 4,  default: 0,                     null: false
    t.string   "card_number",               limit: 30, default: "",                    null: false
    t.string   "card_name",                 limit: 30, default: "",                    null: false
    t.integer  "amount_purse_1",            limit: 4,  default: 0,                     null: false
    t.integer  "discounted_amount_purse_1", limit: 4,  default: 0,                     null: false
    t.integer  "nett_amount_purse_1",       limit: 4,  default: 0,                     null: false
    t.integer  "discount_purse_1",          limit: 4,  default: 0,                     null: false
    t.integer  "surcharge_purse_1",         limit: 4,  default: 0,                     null: false
    t.integer  "vat_amount_purse_1",        limit: 4,  default: 0,                     null: false
    t.integer  "start_balance_purse_1",     limit: 4,  default: 0,                     null: false
    t.integer  "end_balance_purse_1",       limit: 4,  default: 0,                     null: false
    t.integer  "amount_purse_2",            limit: 4,  default: 0,                     null: false
    t.integer  "discounted_amount_purse_2", limit: 4,  default: 0,                     null: false
    t.integer  "nett_amount_purse_2",       limit: 4,  default: 0,                     null: false
    t.integer  "discount_purse_2",          limit: 4,  default: 0,                     null: false
    t.integer  "surcharge_purse_2",         limit: 4,  default: 0,                     null: false
    t.integer  "vat_amount_purse_2",        limit: 4,  default: 0,                     null: false
    t.integer  "start_balance_purse_2",     limit: 4,  default: 0,                     null: false
    t.integer  "end_balance_purse_2",       limit: 4,  default: 0,                     null: false
    t.integer  "amount_purse_3",            limit: 4,  default: 0,                     null: false
    t.integer  "discounted_amount_purse_3", limit: 4,  default: 0,                     null: false
    t.integer  "nett_amount_purse_3",       limit: 4,  default: 0,                     null: false
    t.integer  "discount_purse_3",          limit: 4,  default: 0,                     null: false
    t.integer  "surcharge_purse_3",         limit: 4,  default: 0,                     null: false
    t.integer  "vat_amount_purse_3",        limit: 4,  default: 0,                     null: false
    t.integer  "start_balance_3",           limit: 4,  default: 0,                     null: false
    t.integer  "end_balance_3",             limit: 4,  default: 0,                     null: false
    t.integer  "amount_purse_4",            limit: 4,  default: 0,                     null: false
    t.integer  "discounted_amount_purse_4", limit: 4,  default: 0,                     null: false
    t.integer  "nett_amount_purse_4",       limit: 4,  default: 0,                     null: false
    t.integer  "discount_purse_4",          limit: 4,  default: 0,                     null: false
    t.integer  "surcharge_purse_4",         limit: 4,  default: 0,                     null: false
    t.integer  "vat_amount_purse_4",        limit: 4,  default: 0,                     null: false
    t.integer  "start_balance_4",           limit: 4,  default: 0,                     null: false
    t.integer  "end_balance_4",             limit: 4,  default: 0,                     null: false
    t.integer  "amount_purse_5",            limit: 4,  default: 0,                     null: false
    t.integer  "discounted_amount_purse_5", limit: 4,  default: 0,                     null: false
    t.integer  "nett_amount_purse_5",       limit: 4,  default: 0,                     null: false
    t.integer  "discount_purse_5",          limit: 4,  default: 0,                     null: false
    t.integer  "surcharge_purse_5",         limit: 4,  default: 0,                     null: false
    t.integer  "vat_amount_purse_5",        limit: 4,  default: 0,                     null: false
    t.integer  "start_balance_5",           limit: 4,  default: 0,                     null: false
    t.integer  "end_balance_5",             limit: 4,  default: 0,                     null: false
    t.boolean  "did_not_make_it",           limit: 1,  default: false,                 null: false
    t.boolean  "finalised",                 limit: 1,  default: false,                 null: false
    t.datetime "TimeStamp",                                                            null: false
  end

  add_index "transactions", ["card_holder_id"], name: "CARDUID", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "guid",           limit: 36, default: "", null: false
    t.string   "email",          limit: 30, default: "", null: false
    t.string   "name",           limit: 30, default: "", null: false
    t.string   "password",       limit: 45, default: "", null: false
    t.string   "remember_token", limit: 45, default: "", null: false
    t.integer  "permissions_1",  limit: 8,  default: 0,  null: false
    t.integer  "permissions_2",  limit: 8,  default: 0,  null: false
    t.integer  "permissions_3",  limit: 8,  default: 0,  null: false
    t.integer  "permissions_4",  limit: 8,  default: 0,  null: false
    t.datetime "TimeStamp",                              null: false
  end

  create_table "vats", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "guid",       limit: 36, default: "",  null: false
    t.string   "name",       limit: 30, default: "",  null: false
    t.float    "value",      limit: 53, default: 0.0, null: false
    t.datetime "TimeStamp",                           null: false
  end

end
