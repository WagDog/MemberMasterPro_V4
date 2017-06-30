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

ActiveRecord::Schema.define(version: 20170428141625) do

  create_table "address_types", force: :cascade do |t|
    t.string   "name",       limit: 30, default: "", null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.integer  "member_id",       limit: 4
    t.integer  "address_type_id", limit: 4
    t.string   "address_1",       limit: 30, default: "", null: false
    t.string   "address_2",       limit: 30, default: "", null: false
    t.string   "address_3",       limit: 30, default: "", null: false
    t.string   "address_4",       limit: 30, default: "", null: false
    t.string   "post_code",       limit: 30, default: "", null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "addresses", ["address_type_id"], name: "index_addresses_on_address_type_id", using: :btree
  add_index "addresses", ["member_id"], name: "index_addresses_on_member_id", using: :btree

  create_table "card_discount_matrices", force: :cascade do |t|
    t.integer  "group_id",         limit: 4
    t.integer  "plu_id",           limit: 4
    t.integer  "card_profile_id",  limit: 4
    t.integer  "card_discount_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "card_discount_matrices", ["card_discount_id"], name: "index_card_discount_matrices_on_card_discount_id", using: :btree
  add_index "card_discount_matrices", ["card_profile_id"], name: "index_card_discount_matrices_on_card_profile_id", using: :btree
  add_index "card_discount_matrices", ["group_id"], name: "index_card_discount_matrices_on_group_id", using: :btree
  add_index "card_discount_matrices", ["plu_id"], name: "index_card_discount_matrices_on_plu_id", using: :btree

  create_table "card_discounts", force: :cascade do |t|
    t.string   "name",          limit: 30,                 default: "", null: false
    t.string   "description",   limit: 255,                default: "", null: false
    t.integer  "discount_type", limit: 4,                  default: 0,  null: false
    t.decimal  "amount",                    precision: 10, default: 0,  null: false
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "card_holders", force: :cascade do |t|
    t.integer  "member_id",           limit: 4
    t.string   "title",               limit: 10,                default: "",                    null: false
    t.string   "initials",            limit: 10,                default: "",                    null: false
    t.string   "forename",            limit: 30,                default: "",                    null: false
    t.string   "surname",             limit: 30,                default: "",                    null: false
    t.string   "card_number",         limit: 30,                default: "",                    null: false
    t.integer  "issue_number",        limit: 4,                 default: 0,                     null: false
    t.integer  "card_profile_id",     limit: 4
    t.integer  "status",              limit: 4,                 default: 0,                     null: false
    t.boolean  "valid_in_date_range",                           default: false,                 null: false
    t.decimal  "balance_1",                      precision: 10, default: 0,                     null: false
    t.decimal  "balance_2",                      precision: 10, default: 0,                     null: false
    t.decimal  "balance_3",                      precision: 10, default: 0,                     null: false
    t.decimal  "balance_4",                      precision: 10, default: 0,                     null: false
    t.decimal  "balance_5",                      precision: 10, default: 0,                     null: false
    t.datetime "birth_date",                                    default: '1900-01-01 00:00:00', null: false
    t.string   "category",            limit: 30,                default: "",                    null: false
    t.datetime "created_at",                                                                    null: false
    t.datetime "updated_at",                                                                    null: false
  end

  add_index "card_holders", ["card_profile_id"], name: "index_card_holders_on_card_profile_id", using: :btree
  add_index "card_holders", ["member_id"], name: "index_card_holders_on_member_id", using: :btree

  create_table "card_profiles", force: :cascade do |t|
    t.string   "name",                    limit: 30,                 default: "",                    null: false
    t.string   "description",             limit: 255,                default: "",                    null: false
    t.boolean  "valid_in_date_range",                                default: false,                 null: false
    t.datetime "date_range_start",                                   default: '1900-01-01 00:00:00', null: false
    t.datetime "date_range_end",                                     default: '1900-01-01 00:00:00', null: false
    t.decimal  "credit_limit_purse_1",                precision: 10, default: 0,                     null: false
    t.decimal  "credit_limit_purse_2",                precision: 10, default: 0,                     null: false
    t.decimal  "credit_limit_purse_3",                precision: 10, default: 0,                     null: false
    t.decimal  "credit_limit_purse_4",                precision: 10, default: 0,                     null: false
    t.decimal  "credit_limit_purse_5",                precision: 10, default: 0,                     null: false
    t.boolean  "discount_on_overdrawn_1",                            default: false,                 null: false
    t.boolean  "discount_on_overdrawn_2",                            default: false,                 null: false
    t.boolean  "discount_on_overdrawn_3",                            default: false,                 null: false
    t.boolean  "discount_on_overdrawn_4",                            default: false,                 null: false
    t.boolean  "discount_on_overdrawn_5",                            default: false,                 null: false
    t.boolean  "pay_by_cash",                                        default: false,                 null: false
    t.datetime "created_at",                                                                         null: false
    t.datetime "updated_at",                                                                         null: false
  end

  create_table "card_revenues", force: :cascade do |t|
    t.string   "name",       limit: 30, default: "", null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "card_systems", force: :cascade do |t|
    t.boolean  "use_site_id",                    default: false,                 null: false
    t.string   "site_id",             limit: 30, default: "",                    null: false
    t.boolean  "use_issue_number",               default: false,                 null: false
    t.datetime "default_time_start",             default: '1970-01-01 00:00:00', null: false
    t.datetime "default_time_end",               default: '1970-01-01 00:00:00', null: false
    t.boolean  "use_stock_control",              default: false,                 null: false
    t.boolean  "use_time_attendance",            default: false,                 null: false
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
  end

  create_table "cashiers", force: :cascade do |t|
    t.string   "name",                       limit: 30,                 default: "",    null: false
    t.string   "key_code",                   limit: 30,                 default: "",    null: false
    t.string   "functions_1",                limit: 255,                default: "",    null: false
    t.string   "functions_2",                limit: 255,                default: "",    null: false
    t.string   "functions_3",                limit: 255,                default: "",    null: false
    t.string   "pin",                        limit: 10,                 default: "",    null: false
    t.boolean  "needs_sign_in",                                         default: false, null: false
    t.decimal  "regular_wage",                           precision: 10, default: 0,     null: false
    t.decimal  "overtime_wage_1",                        precision: 10, default: 0,     null: false
    t.decimal  "overtime_wage_2",                        precision: 10, default: 0,     null: false
    t.integer  "max_day_seconds",            limit: 4,                  default: 0,     null: false
    t.integer  "max_day_overtime_1_seconds", limit: 4,                  default: 0,     null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
  end

  create_table "email_addresses", force: :cascade do |t|
    t.integer  "member_id",  limit: 4
    t.string   "email",      limit: 100, default: "",    null: false
    t.boolean  "is_default",             default: false, null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "email_addresses", ["member_id"], name: "index_email_addresses_on_member_id", using: :btree

  create_table "function_buttons", force: :cascade do |t|
    t.string   "name",       limit: 30, default: "", null: false
    t.integer  "function",   limit: 4,  default: 0,  null: false
    t.integer  "code",       limit: 4,  default: 0,  null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name",              limit: 30,                default: "", null: false
    t.integer  "card_revenue_id",   limit: 4
    t.decimal  "surcharge_percent",            precision: 10, default: 0,  null: false
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  add_index "groups", ["card_revenue_id"], name: "index_groups_on_card_revenue_id", using: :btree

  create_table "info_texts", force: :cascade do |t|
    t.string   "name",           limit: 30,  default: "",    null: false
    t.integer  "till_id",        limit: 4
    t.boolean  "is_header",                  default: true,  null: false
    t.string   "text",           limit: 255, default: "",    null: false
    t.boolean  "bold",                       default: false, null: false
    t.boolean  "underline",                  default: false, null: false
    t.boolean  "double_width",               default: false, null: false
    t.boolean  "double_height",              default: false, null: false
    t.boolean  "quadruple",                  default: false, null: false
    t.boolean  "center_aligned",             default: false, null: false
    t.boolean  "right_aligned",              default: false, null: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "info_texts", ["till_id"], name: "index_info_texts_on_till_id", using: :btree

  create_table "kp_prints", force: :cascade do |t|
    t.integer  "till_id",        limit: 4
    t.datetime "date_received",                     default: '1900-01-01 00:00:00', null: false
    t.datetime "date_processed",                    default: '1900-01-01 00:00:00', null: false
    t.integer  "printer_number", limit: 4,          default: 0,                     null: false
    t.boolean  "processed",                         default: false,                 null: false
    t.binary   "data",           limit: 4294967295,                                 null: false
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
  end

  add_index "kp_prints", ["till_id"], name: "index_kp_prints_on_till_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name",       limit: 30, default: "", null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "macros", force: :cascade do |t|
    t.string   "name",          limit: 30,  default: "", null: false
    t.string   "function_keys", limit: 255, default: "", null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "media", force: :cascade do |t|
    t.string   "name",             limit: 30,                default: "",    null: false
    t.boolean  "open_drawer",                                default: false, null: false
    t.boolean  "use_chip_pin",                               default: false, null: false
    t.decimal  "medium_surcharge",            precision: 10, default: 0,     null: false
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  create_table "member_categories", force: :cascade do |t|
    t.string   "name",       limit: 30, default: "", null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "member_note_types", force: :cascade do |t|
    t.string   "name",       limit: 45, default: "", null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "member_notes", force: :cascade do |t|
    t.integer  "member_id",           limit: 4
    t.integer  "member_note_type_id", limit: 4
    t.string   "title",               limit: 30,    default: "", null: false
    t.text     "note",                limit: 65535,              null: false
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "member_notes", ["member_id"], name: "index_member_notes_on_member_id", using: :btree
  add_index "member_notes", ["member_note_type_id"], name: "index_member_notes_on_member_note_type_id", using: :btree

  create_table "members", force: :cascade do |t|
    t.string   "code",                limit: 4,  default: "",                    null: false
    t.string   "prefix",              limit: 10, default: "",                    null: false
    t.string   "title",               limit: 10, default: "",                    null: false
    t.string   "initials",            limit: 10, default: "",                    null: false
    t.string   "forename",            limit: 30, default: "",                    null: false
    t.string   "surname",             limit: 30, default: "",                    null: false
    t.string   "suffix",              limit: 10, default: "",                    null: false
    t.integer  "member_category_id",  limit: 4
    t.string   "formal_salutation",   limit: 45, default: "",                    null: false
    t.string   "informal_salutation", limit: 45, default: "",                    null: false
    t.boolean  "male",                           default: true,                  null: false
    t.boolean  "master",                         default: true,                  null: false
    t.boolean  "direct_debit",                   default: false,                 null: false
    t.datetime "birth_date",                     default: '1900-01-01 00:00:00', null: false
    t.datetime "join_date",                      default: '1900-01-01 00:00:00', null: false
    t.datetime "left_date",                      default: '1900-01-01 00:00:00', null: false
    t.boolean  "is_active",                      default: true,                  null: false
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
  end

  add_index "members", ["member_category_id"], name: "index_members_on_member_category_id", using: :btree

  create_table "modifiers", force: :cascade do |t|
    t.string   "name",        limit: 30,                default: "",                    null: false
    t.integer  "function",    limit: 4,                 default: 0,                     null: false
    t.integer  "mechanism",   limit: 4,                 default: 0,                     null: false
    t.decimal  "percentage",             precision: 10, default: 0,                     null: false
    t.integer  "plus_minus",  limit: 4,                 default: 0,                     null: false
    t.integer  "change_from", limit: 4,                 default: 0,                     null: false
    t.integer  "change_to",   limit: 4,                 default: 0,                     null: false
    t.integer  "plu_offset",  limit: 4,                 default: 0,                     null: false
    t.datetime "time_from_1",                           default: '1900-01-01 00:00:00', null: false
    t.datetime "time_to_1",                             default: '1900-01-01 00:00:00', null: false
    t.datetime "time_from_2",                           default: '1900-01-01 00:00:00', null: false
    t.datetime "time_to_2",                             default: '1900-01-01 00:00:00', null: false
    t.datetime "time_from_3",                           default: '1900-01-01 00:00:00', null: false
    t.datetime "time_to_3",                             default: '1900-01-01 00:00:00', null: false
    t.datetime "time_from_4",                           default: '1900-01-01 00:00:00', null: false
    t.datetime "time_to_4",                             default: '1900-01-01 00:00:00', null: false
    t.datetime "time_from_5",                           default: '1900-01-01 00:00:00', null: false
    t.datetime "time_to_5",                             default: '1900-01-01 00:00:00', null: false
    t.boolean  "monday",                                default: false,                 null: false
    t.boolean  "tuesday",                               default: false,                 null: false
    t.boolean  "wednesday",                             default: false,                 null: false
    t.boolean  "thursday",                              default: false,                 null: false
    t.boolean  "friday",                                default: false,                 null: false
    t.boolean  "saturday",                              default: false,                 null: false
    t.boolean  "sunday",                                default: false,                 null: false
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
  end

  create_table "plus", force: :cascade do |t|
    t.string   "name",             limit: 30,                default: "",    null: false
    t.decimal  "price_1",                     precision: 10, default: 0,     null: false
    t.decimal  "price_2",                     precision: 10, default: 0,     null: false
    t.decimal  "price_3",                     precision: 10, default: 0,     null: false
    t.decimal  "price_4",                     precision: 10, default: 0,     null: false
    t.decimal  "price_5",                     precision: 10, default: 0,     null: false
    t.decimal  "price_6",                     precision: 10, default: 0,     null: false
    t.integer  "group_id",         limit: 4
    t.decimal  "plu_cost",                    precision: 10, default: 0,     null: false
    t.integer  "vat_id",           limit: 4
    t.integer  "stock_mode",       limit: 4,                 default: 0,     null: false
    t.integer  "rp_sort_group_id", limit: 4
    t.integer  "purse_no",         limit: 4,                 default: 1,     null: false
    t.integer  "kp_printer",       limit: 4,                 default: 0,     null: false
    t.string   "barcode",          limit: 50,                default: "",    null: false
    t.integer  "price_type",       limit: 4,                 default: 0,     null: false
    t.boolean  "condiment",                                  default: false, null: false
    t.integer  "modifier_id",      limit: 4
    t.integer  "popup_window_1",   limit: 4,                 default: 0,     null: false
    t.integer  "popup_window_2",   limit: 4,                 default: 0,     null: false
    t.integer  "popup_window_3",   limit: 4,                 default: 0,     null: false
    t.integer  "popup_window_4",   limit: 4,                 default: 0,     null: false
    t.integer  "popup_window_5",   limit: 4,                 default: 0,     null: false
    t.integer  "back_colour",      limit: 4,                 default: 0,     null: false
    t.integer  "font_colour",      limit: 4,                 default: 0,     null: false
    t.boolean  "is_active",                                  default: true,  null: false
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  add_index "plus", ["group_id"], name: "index_plus_on_group_id", using: :btree
  add_index "plus", ["modifier_id"], name: "index_plus_on_modifier_id", using: :btree
  add_index "plus", ["rp_sort_group_id"], name: "index_plus_on_rp_sort_group_id", using: :btree
  add_index "plus", ["vat_id"], name: "index_plus_on_vat_id", using: :btree

  create_table "pop_up_windows", force: :cascade do |t|
    t.string   "name",       limit: 30, default: "",   null: false
    t.integer  "plu_id",     limit: 4
    t.boolean  "show_price",            default: true, null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "pop_up_windows", ["plu_id"], name: "index_pop_up_windows_on_plu_id", using: :btree

  create_table "rp_sort_groups", force: :cascade do |t|
    t.string   "name",       limit: 30, default: "", null: false
    t.integer  "sequence",   limit: 4,  default: 0,  null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "selection_windows", force: :cascade do |t|
    t.string   "name",       limit: 30, default: "", null: false
    t.integer  "plu_id",     limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "selection_windows", ["plu_id"], name: "index_selection_windows_on_plu_id", using: :btree

  create_table "sites", force: :cascade do |t|
    t.string   "name",       limit: 30, default: "", null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "telephone_numbers", force: :cascade do |t|
    t.integer  "member_id",         limit: 4
    t.integer  "telephone_type_id", limit: 4
    t.string   "number",            limit: 45, default: "", null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "telephone_numbers", ["member_id"], name: "index_telephone_numbers_on_member_id", using: :btree
  add_index "telephone_numbers", ["telephone_type_id"], name: "index_telephone_numbers_on_telephone_type_id", using: :btree

  create_table "telephone_types", force: :cascade do |t|
    t.string   "name",       limit: 45, default: "", null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "tills", force: :cascade do |t|
    t.string   "name",                         limit: 30,    default: "",    null: false
    t.integer  "last_z_transaction",           limit: 4,     default: 0,     null: false
    t.integer  "last_z_report_counter",        limit: 4,     default: 0,     null: false
    t.boolean  "locked",                                     default: false, null: false
    t.boolean  "change_due",                                 default: false, null: false
    t.text     "change_data",                  limit: 65535,                 null: false
    t.boolean  "new_journal_on_startup",                     default: false, null: false
    t.boolean  "allow_topup_purse_1",                        default: true,  null: false
    t.boolean  "allow_topup_purse_2",                        default: false, null: false
    t.boolean  "allow_topup_purse_3",                        default: false, null: false
    t.boolean  "allow_topup_purse_4",                        default: false, null: false
    t.boolean  "allow_topup_purse_5",                        default: false, null: false
    t.string   "purse_1_name",                 limit: 30,    default: "",    null: false
    t.string   "purse_2_name",                 limit: 30,    default: "",    null: false
    t.string   "purse_3_name",                 limit: 30,    default: "",    null: false
    t.string   "purse_4_name",                 limit: 30,    default: "",    null: false
    t.string   "purse_5_name",                 limit: 30,    default: "",    null: false
    t.boolean  "auto_surcharge",                             default: false, null: false
    t.string   "version",                      limit: 10,    default: "",    null: false
    t.boolean  "compulsory_media_declaration",               default: false, null: false
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  create_table "transaction_items", force: :cascade do |t|
    t.integer  "transaction_id",           limit: 4
    t.integer  "cashier_id",               limit: 4
    t.integer  "plu_id",                   limit: 4
    t.string   "plu_name",                 limit: 30,                default: "",                    null: false
    t.decimal  "plu_factor",                          precision: 10, default: 0,                     null: false
    t.decimal  "plu_factor_entered",                  precision: 10, default: 0,                     null: false
    t.decimal  "plu_price",                           precision: 10, default: 0,                     null: false
    t.integer  "plu_price_level",          limit: 4,                 default: 0,                     null: false
    t.integer  "plu_group_id",             limit: 4,                 default: 0,                     null: false
    t.decimal  "plu_price_level_1",                   precision: 10, default: 0,                     null: false
    t.decimal  "plu_cost",                            precision: 10, default: 0,                     null: false
    t.integer  "vat_id",                   limit: 4
    t.boolean  "void",                                               default: false,                 null: false
    t.datetime "sale_date_time",                                     default: '1900-01-01 00:00:00', null: false
    t.integer  "rp_sort_group_id",         limit: 4
    t.boolean  "kp_printed",                                         default: false,                 null: false
    t.boolean  "condiment",                                          default: false,                 null: false
    t.integer  "purse_no",                 limit: 4,                 default: 0,                     null: false
    t.decimal  "line_amount",                         precision: 10, default: 0,                     null: false
    t.decimal  "discounted_amount",                   precision: 10, default: 0,                     null: false
    t.decimal  "single_discounted_amount",            precision: 10, default: 0,                     null: false
    t.decimal  "nett_amount",                         precision: 10, default: 0,                     null: false
    t.decimal  "discount",                            precision: 10, default: 0,                     null: false
    t.decimal  "surcharge_amount",                    precision: 10, default: 0,                     null: false
    t.decimal  "vat_amount",                          precision: 10, default: 0,                     null: false
    t.decimal  "single_vat_amount",                   precision: 10, default: 0,                     null: false
    t.boolean  "add_surcharge",                                      default: false,                 null: false
    t.datetime "created_at",                                                                         null: false
    t.datetime "updated_at",                                                                         null: false
  end

  add_index "transaction_items", ["cashier_id"], name: "index_transaction_items_on_cashier_id", using: :btree
  add_index "transaction_items", ["plu_id"], name: "index_transaction_items_on_plu_id", using: :btree
  add_index "transaction_items", ["rp_sort_group_id"], name: "index_transaction_items_on_rp_sort_group_id", using: :btree
  add_index "transaction_items", ["transaction_id"], name: "index_transaction_items_on_transaction_id", using: :btree
  add_index "transaction_items", ["vat_id"], name: "index_transaction_items_on_vat_id", using: :btree

  create_table "transactions", force: :cascade do |t|
    t.integer  "site_id",                   limit: 4
    t.integer  "location_id",               limit: 4
    t.integer  "till_id",                   limit: 4
    t.datetime "start_date_time",                                     default: '1900-01-01 00:00:00', null: false
    t.datetime "end_date_time",                                       default: '1900-01-01 00:00:00', null: false
    t.integer  "receipt_number",            limit: 4,                 default: 0,                     null: false
    t.integer  "cashier_id",                limit: 4
    t.string   "cashier_name",              limit: 30,                default: "",                    null: false
    t.integer  "medium_id",                 limit: 4
    t.string   "medium_name",               limit: 30,                default: "",                    null: false
    t.decimal  "total_amount",                         precision: 10, default: 0,                     null: false
    t.decimal  "total_discounted_amount",              precision: 10, default: 0,                     null: false
    t.decimal  "total_nett_amount",                    precision: 10, default: 0,                     null: false
    t.decimal  "total_vat_amount",                     precision: 10, default: 0,                     null: false
    t.decimal  "total_discount",                       precision: 10, default: 0,                     null: false
    t.decimal  "total_topup",                          precision: 10, default: 0,                     null: false
    t.decimal  "total_paid_out",                       precision: 10, default: 0,                     null: false
    t.decimal  "total_surcharge",                      precision: 10, default: 0,                     null: false
    t.decimal  "amount_tendered",                      precision: 10, default: 0,                     null: false
    t.decimal  "change_given",                         precision: 10, default: 0,                     null: false
    t.boolean  "no_sale",                                             default: false,                 null: false
    t.integer  "card_holder_id",            limit: 4
    t.string   "card_number",               limit: 30,                default: "",                    null: false
    t.string   "card_name",                 limit: 30,                default: "",                    null: false
    t.decimal  "amount_purse_1",                       precision: 10, default: 0,                     null: false
    t.decimal  "discounted_amount_purse_1",            precision: 10, default: 0,                     null: false
    t.decimal  "nett_amount_purse_1",                  precision: 10, default: 0,                     null: false
    t.decimal  "discount_purse_1",                     precision: 10, default: 0,                     null: false
    t.decimal  "surcharge_purse_1",                    precision: 10, default: 0,                     null: false
    t.decimal  "vat_amount_purse_1",                   precision: 10, default: 0,                     null: false
    t.decimal  "start_balance_purse_1",                precision: 10, default: 0,                     null: false
    t.decimal  "end_balance_purse_1",                  precision: 10, default: 0,                     null: false
    t.decimal  "amount_purse_2",                       precision: 10, default: 0,                     null: false
    t.decimal  "discounted_amount_purse_2",            precision: 10, default: 0,                     null: false
    t.decimal  "nett_amount_purse_2",                  precision: 10, default: 0,                     null: false
    t.decimal  "discount_purse_2",                     precision: 10, default: 0,                     null: false
    t.decimal  "surcharge_purse_2",                    precision: 10, default: 0,                     null: false
    t.decimal  "vat_amount_purse_2",                   precision: 10, default: 0,                     null: false
    t.decimal  "start_balance_purse_2",                precision: 10, default: 0,                     null: false
    t.decimal  "end_balance_purse_2",                  precision: 10, default: 0,                     null: false
    t.decimal  "amount_purse_3",                       precision: 10, default: 0,                     null: false
    t.decimal  "discounted_amount_purse_3",            precision: 10, default: 0,                     null: false
    t.decimal  "nett_amount_purse_3",                  precision: 10, default: 0,                     null: false
    t.decimal  "discount_purse_3",                     precision: 10, default: 0,                     null: false
    t.decimal  "surcharge_purse_3",                    precision: 10, default: 0,                     null: false
    t.decimal  "vat_amount_purse_3",                   precision: 10, default: 0,                     null: false
    t.decimal  "start_balance_3",                      precision: 10, default: 0,                     null: false
    t.decimal  "end_balance_3",                        precision: 10, default: 0,                     null: false
    t.decimal  "amount_purse_4",                       precision: 10, default: 0,                     null: false
    t.decimal  "discounted_amount_purse_4",            precision: 10, default: 0,                     null: false
    t.decimal  "nett_amount_purse_4",                  precision: 10, default: 0,                     null: false
    t.decimal  "discount_purse_4",                     precision: 10, default: 0,                     null: false
    t.decimal  "surcharge_purse_4",                    precision: 10, default: 0,                     null: false
    t.decimal  "vat_amount_purse_4",                   precision: 10, default: 0,                     null: false
    t.decimal  "start_balance_4",                      precision: 10, default: 0,                     null: false
    t.decimal  "end_balance_4",                        precision: 10, default: 0,                     null: false
    t.decimal  "amount_purse_5",                       precision: 10, default: 0,                     null: false
    t.decimal  "discounted_amount_purse_5",            precision: 10, default: 0,                     null: false
    t.decimal  "nett_amount_purse_5",                  precision: 10, default: 0,                     null: false
    t.decimal  "discount_purse_5",                     precision: 10, default: 0,                     null: false
    t.decimal  "surcharge_purse_5",                    precision: 10, default: 0,                     null: false
    t.decimal  "vat_amount_purse_5",                   precision: 10, default: 0,                     null: false
    t.decimal  "start_balance_5",                      precision: 10, default: 0,                     null: false
    t.decimal  "end_balance_5",                        precision: 10, default: 0,                     null: false
    t.boolean  "did_not_make_it",                                     default: false,                 null: false
    t.boolean  "finalised",                                           default: false,                 null: false
    t.datetime "created_at",                                                                          null: false
    t.datetime "updated_at",                                                                          null: false
  end

  add_index "transactions", ["card_holder_id"], name: "index_transactions_on_card_holder_id", using: :btree
  add_index "transactions", ["cashier_id"], name: "index_transactions_on_cashier_id", using: :btree
  add_index "transactions", ["location_id"], name: "index_transactions_on_location_id", using: :btree
  add_index "transactions", ["medium_id"], name: "index_transactions_on_medium_id", using: :btree
  add_index "transactions", ["site_id"], name: "index_transactions_on_site_id", using: :btree
  add_index "transactions", ["till_id"], name: "index_transactions_on_till_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           limit: 100, default: "",    null: false
    t.string   "name",            limit: 50,  default: "",    null: false
    t.boolean  "isAdministrator",             default: false, null: false
    t.string   "password_digest", limit: 255
    t.string   "remember_token",  limit: 255
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "vats", force: :cascade do |t|
    t.string   "name",       limit: 30,                default: "", null: false
    t.decimal  "value",                 precision: 10, default: 0,  null: false
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  add_foreign_key "addresses", "address_types"
  add_foreign_key "addresses", "members"
  add_foreign_key "card_discount_matrices", "card_discounts"
  add_foreign_key "card_discount_matrices", "card_profiles"
  add_foreign_key "card_discount_matrices", "groups"
  add_foreign_key "card_discount_matrices", "plus"
  add_foreign_key "card_holders", "card_profiles"
  add_foreign_key "card_holders", "members"
  add_foreign_key "email_addresses", "members"
  add_foreign_key "groups", "card_revenues"
  add_foreign_key "info_texts", "tills"
  add_foreign_key "member_notes", "member_note_types"
  add_foreign_key "member_notes", "members"
  add_foreign_key "members", "member_categories"
  add_foreign_key "plus", "groups"
  add_foreign_key "plus", "modifiers"
  add_foreign_key "plus", "rp_sort_groups"
  add_foreign_key "plus", "vats"
  add_foreign_key "pop_up_windows", "plus"
  add_foreign_key "selection_windows", "plus"
  add_foreign_key "telephone_numbers", "members"
  add_foreign_key "telephone_numbers", "telephone_types"
  add_foreign_key "transaction_items", "cashiers"
  add_foreign_key "transaction_items", "plus"
  add_foreign_key "transaction_items", "rp_sort_groups"
  add_foreign_key "transaction_items", "transactions"
  add_foreign_key "transaction_items", "vats"
  add_foreign_key "transactions", "card_holders"
  add_foreign_key "transactions", "cashiers"
  add_foreign_key "transactions", "locations"
  add_foreign_key "transactions", "media"
  add_foreign_key "transactions", "sites"
  add_foreign_key "transactions", "tills"
end
