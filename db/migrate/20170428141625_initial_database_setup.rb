class InitialDatabaseSetup < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,                          limit: 100, default: '',        null: false
      t.string :name,                           limit: 50, default: '',         null: false
      t.boolean :isAdministrator,               limit: 1,  default: false,      null: false
      t.string :password_digest
      t.string :remember_token
      t.timestamps                                                              null: false
    end

    create_table :card_discounts, force: :cascade do |t|
      t.string   :name,                         limit: 30, default: '',         null: false
      t.string   :description,                  default: '',                    null: false
      t.integer  :discount_type,                limit: 4, default: 0,           null: false
      t.decimal  :amount,                       default: 0,                     null: false
      t.timestamps                                                              null: false
    end

    create_table :groups, force: :cascade do |t|
      t.string   :name,                         limit: 30, default: '',         null: false
      t.decimal  :surcharge_percent,            default: 0,                     null: false
      t.timestamps                                                              null: false
    end

    create_table :plus, force: :cascade do |t|
      t.string   :name,                         limit: 30, default: '',         null: false
      t.decimal  :price_1,                      default: 0,                     null: false
      t.decimal  :price_2,                      default: 0,                     null: false
      t.decimal  :price_3,                      default: 0,                     null: false
      t.decimal  :price_4,                      default: 0,                     null: false
      t.decimal  :price_5,                      default: 0,                     null: false
      t.decimal  :price_6,                      default: 0,                     null: false
      t.references :group,                      index: true
      t.decimal  :plu_cost,                     default: 0,                     null: false
      t.references :vat,                        index: true
      t.integer  :stock_mode,                   limit: 4,   default: 0,         null: false
      t.references :rp_sort_group,              index: true
      t.integer  :purse_no,                     limit: 4,   default: 1,         null: false
      t.integer  :kp_printer,                   limit: 4,   default: 0,         null: false
      t.string   :barcode,                      limit: 50,  default: '',        null: false
      t.integer  :price_type,                   limit: 4,   default: 0,         null: false
      t.boolean  :condiment,                    limit: 1,   default: false,     null: false
      t.string   :modifiers,                    default: '',                    null: false
      t.integer  :popup_window_1,               limit: 4,   default: 0,         null: false
      t.integer  :popup_window_2,               limit: 4,   default: 0,         null: false
      t.integer  :popup_window_3,               limit: 4,   default: 0,         null: false
      t.integer  :popup_window_4,               limit: 4,   default: 0,         null: false
      t.integer  :popup_window_5,               limit: 4,   default: 0,         null: false
      t.integer  :back_colour,                  limit: 4,   default: 0,         null: false
      t.integer  :font_colour,                  limit: 4,   default: 0,         null: false
      t.boolean  :is_active,                    limit: 1,   default: true,      null: false
      t.timestamps                                                              null: false
    end
    add_foreign_key :plus, :groups
    add_foreign_key :plus, :vat
    add_foreign_key :plus, :rp_sort_groups



    create_table :card_profiles, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.string   :description,                              default: '',        null: false
      t.boolean  :valid_in_date_range,          limit: 1,   default: false,     null: false
      t.datetime :date_range_start,             default: '1900-01-01 00:00:00', null: false
      t.datetime :date_range_end,               default: '1900-01-01 00:00:00', null: false
      t.decimal  :credit_limit_purse_1,         default: 0,                     null: false
      t.decimal  :credit_limit_purse_2,         default: 0,                     null: false
      t.decimal  :credit_limit_purse_3,         default: 0,                     null: false
      t.decimal  :credit_limit_purse_4,         default: 0,                     null: false
      t.decimal  :credit_limit_purse_5,         default: 0,                     null: false
      t.boolean  :discount_on_overdrawn_1,      limit: 1,   default: false,     null: false
      t.boolean  :discount_on_overdrawn_2,      limit: 1,   default: false,     null: false
      t.boolean  :discount_on_overdrawn_3,      limit: 1,   default: false,     null: false
      t.boolean  :discount_on_overdrawn_4,      limit: 1,   default: false,     null: false
      t.boolean  :discount_on_overdrawn_5,      limit: 1,   default: false,     null: false
      t.boolean  :pay_by_cash,                  limit: 1,   default: false,     null: false
      t.timestamps                                                              null: false
    end

    create_table :card_discount_matrices, force: :cascade do |t|
      t.references  :group,                     index: true
      t.references  :plu,                       index: true
      t.references  :card_profiles,             index: true
      t.references  :card_discounts,            index: true
      t.timestamps                                                              null: false
    end

    add_foreign_key :card_discount_matrices, :groups
    add_foreign_key :card_discount_matrices, :plus
    add_foreign_key :card_discount_matrices, :card_profiles
    add_foreign_key :card_discount_matrices, :card_discounts


    create_table :card_holders, force: :cascade do |t|
      t.references :member,                     index: true
      t.string   :title,                        limit: 10,  default: '',        null: false
      t.string   :initials,                     limit: 10,  default: '',        null: false
      t.string   :surname,                      limit: 30,  default: '',        null: false
      t.string   :card_number,                  limit: 30,  default: '',        null: false
      t.integer  :issue_number,                 limit: 4,   default: 0,         null: false
      t.references :card_profile,               index: true
      t.integer  :status,                       limit: 4,   default: 0,         null: false
      t.boolean  :valid_in_date_range,          limit: 1,   default: false,     null: false
      t.decimal  :balance_1,                    default: 0,                     null: false
      t.decimal  :balance_2,                    default: 0,                     null: false
      t.decimal  :balance_3,                    default: 0,                     null: false
      t.decimal  :balance_4,                    default: 0,                     null: false
      t.decimal  :balance_5,                    default: 0,                     null: false
      t.datetime :birth_date,                   default: '1900-01-01 00:00:00', null: false
      t.string   :category,                     limit: 30,  default: '',        null: false
      t.timestamps                                                              null: false
    end

    add_foreign_key :card_holders, :card_profiles

    create_table :card_revenues, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.string   :groups,                                   default: '',        null: false
      t.timestamps                                                              null: false
    end

    create_table :card_systems, force: :cascade do |t|
      t.boolean  :use_site_id,                  limit: 1,   default: false,     null: false
      t.string   :site_id,                      limit: 30,  default: '',        null: false
      t.boolean  :use_issue_number,             limit: 1,   default: false,     null: false
      t.datetime :default_time_start,           default: '1970-01-01 00:00:00', null: false
      t.datetime :default_time_end,             default: '1970-01-01 00:00:00', null: false
      t.boolean  :use_stock_control,            limit: 1,   default: false,     null: false
      t.boolean  :use_time_attendance,          limit: 1,   default: false,     null: false
      t.timestamps                                                              null: false
    end

    create_table :cashiers, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.string   :key_code,                     limit: 30,  default: '',        null: false
      t.string   :functions_1,                              default: '',        null: false
      t.string   :functions_2,                              default: '',        null: false
      t.string   :functions_3,                              default: '',        null: false
      t.string   :pin,                          limit: 10,  default: '',        null: false
      t.boolean  :needs_sign_in,                limit: 1,   default: false,     null: false
      t.decimal  :regular_wage,                             default: 0,         null: false
      t.decimal  :overtime_wage_1,                          default: 0,         null: false
      t.decimal  :overtime_wage_2,                          default: 0,         null: false
      t.integer  :max_day_seconds,              limit: 4,   default: 0,         null: false
      t.integer  :max_day_overtime_1_seconds,   limit: 4,   default: 0,         null: false
      t.timestamps                                                              null: false
    end

    create_table :members, force: :cascade do |t|
      t.string   :code,                         limit: 4,   default: '',        null: false
      t.string   :prefix,                       limit: 10,  default: '',        null: false
      t.string   :title,                        limit: 10,  default: '',        null: false
      t.string   :initials,                     limit: 10,  default: '',        null: false
      t.string   :forename,                     limit: 30,  default: '',        null: false
      t.string   :surname,                      limit: 30,  default: '',        null: false
      t.string   :suffix,                       limit: 10,  default: '',        null: false
      t.references  :address,                   index: true
      t.references :telephone_number,           index: true
      t.references :email_address,              index: true
      t.references :member_category,            index: true
      t.string   :formal_salutation,            limit: 45,  default: '',        null: false
      t.string   :informal_salutation,          limit: 45,  default: '',        null: false
      t.boolean  :male,                         limit: 1,   default: true,      null: false
      t.boolean  :master,                       limit: 1,   default: true,      null: false
      t.boolean  :direct_debit,                 limit: 1,   default: false,     null: false
      t.datetime :birth_date,                   default: '1900-01-01 00:00:00', null: false
      t.datetime :join_date,                    default: '1900-01-01 00:00:00', null: false
      t.datetime :left_date,                    default: '1900-01-01 00:00:00', null: false
      t.boolean  :is_active,                    limit: 1,   default: true,      null: false
      t.timestamps                                                              null: false
    end

    add_foreign_key :members, :addresses
    add_foreign_key :members, :telephone_numbers
    add_foreign_key :members, :email_addresses
    add_foreign_key :members, :member_categories
    
    create_table :email_addresses, force: :cascade do |t|
      t.string   :email,                        limit: 100, default: '',        null: false
      t.boolean  :is_default,                   limit: 1,   default: false,     null: false
      t.timestamps                                                              null: false
    end

    add_foreign_key :email_addresses, :members

    create_table :addresses, force: :cascade do |t|
      t.string   :address_1,                    limit: 30,  default: '',        null: false
      t.string   :address_2,                    limit: 30,  default: '',        null: false
      t.string   :address_3,                    limit: 30,  default: '',        null: false
      t.string   :address_4,                    limit: 30,  default: '',        null: false
      t.string   :post_code,                    limit: 30,  default: '',        null: false
      t.timestamps                                                              null: false
    end

    create_table :function_buttons, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.boolean  :function,                     limit: 1,   default: false,     null: false
      t.boolean  :code,                         limit: 1,   default: false,     null: false
      t.timestamps                                                              null: false
    end

    create_table :info_texts, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.references  :till,                      index: true
      t.string   :text,                         limit: 255, default: '',        null: false
      t.boolean  :bold,                         limit: 1,   default: false,     null: false
      t.boolean  :underline,                    limit: 1,   default: false,     null: false
      t.boolean  :double_width,                 limit: 1,   default: false,     null: false
      t.boolean  :double_height,                limit: 1,   default: false,     null: false
      t.boolean  :quadruple,                    limit: 1,   default: false,     null: false
      t.boolean  :center_aligned,               limit: 1,   default: false,     null: false
      t.boolean  :right_aligned,                limit: 1,   default: false,     null: false
      t.timestamps                                                              null: false
    end

    add_foreign_key :info_texts, :tills

    create_table :kp_prints, force: :cascade do |t|
      t.datetime :date_received,                default: '1900-01-01 00:00:00', null: false
      t.datetime :date_processed,               default: '1900-01-01 00:00:00', null: false
      t.integer  :printer_number,               limit: 4,   default: 0,         null: false
      t.integer  :processed,                    limit: 1,   default: 0,         null: false
      t.binary   :data,                         limit: 4294967295,              null: false
      t.timestamps                                                              null: false
    end

    create_table :macros, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.string   :function_keys,                limit: 255, default: '',        null: false
      t.timestamps                                                              null: false
    end

    create_table :medias, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.boolean  :open_drawer,                  limit: 1,   default: false,     null: false
      t.boolean  :use_chip_pin,                 limit: 1,   default: false,     null: false
      t.decimal  :media_surcharge,              limit: 53,  default: 0,         null: false
      t.timestamps                                                              null: false
    end

    create_table :member_categories, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.timestamps                                                              null: false
    end
    
    create_table :modifiers, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.boolean  :function,                     limit: 1,   default: false,     null: false
      t.boolean  :mechanism,                    limit: 1,   default: false,     null: false
      t.decimal  :percentage,                               default: 0,         null: false
      t.integer  :plus_minus,                   limit: 4,   default: 0,         null: false
      t.integer  :change_from,                  limit: 4,   default: 0,         null: false
      t.integer  :change_to,                    limit: 4,   default: 0,         null: false
      t.integer  :plu_offset,                   limit: 4,   default: 0,         null: false
      t.datetime :time_from_1,                  default: '1900-01-01 00:00:00', null: false
      t.datetime :time_to_1,                    default: '1900-01-01 00:00:00', null: false
      t.datetime :time_from_2,                  default: '1900-01-01 00:00:00', null: false
      t.datetime :time_to_2,                    default: '1900-01-01 00:00:00', null: false
      t.datetime :time_from_3,                  default: '1900-01-01 00:00:00', null: false
      t.datetime :time_to_3,                    default: '1900-01-01 00:00:000', null: false
      t.datetime :time_from_4,                  default: '1900-01-01 00:00:00', null: false
      t.datetime :time_to_4,                    default: '1900-01-01 00:00:00', null: false
      t.datetime :time_from_5,                  default: '1900-01-01 00:00:00', null: false
      t.datetime :time_to_5,                    default: '1900-01-01 00:00:00', null: false
      t.boolean  :monday,                       limit: 1,   default: false,     null: false
      t.boolean  :tuesday,                      limit: 1,   default: false,     null: false
      t.boolean  :wednesday,                    limit: 1,   default: false,     null: false
      t.boolean  :thursday,                     limit: 1,   default: false,     null: false
      t.boolean  :friday,                       limit: 1,   default: false,     null: false
      t.boolean  :saturday,                     limit: 1,   default: false,     null: false
      t.boolean  :sunday,                       limit: 1,   default: false,     null: false
      t.timestamps                                                              null: false
    end

    create_table :pop_up_windows, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.string   :plu_id_list,                              default: '',        null: false
      t.boolean  :show_price,                   limit: 1,   default: true,      null: false
      t.timestamps                                                              null: false
    end

    create_table :rp_sort_groups, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.timestamps                                                              null: false
    end

    create_table :selection_windows, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.string   :plu_id_list,                              default: '',        null: false
      t.timestamps                                                              null: false
    end

    create_table :telephone_types, force: :cascade do |t|
      t.string   :name,                          limit: 45,  default: '',       null: false
      t.timestamps                                                              null: false
    end

    create_table :telephone_numbers, force: :cascade do |t|
      t.references  :telephone_type,            limit: 4,   default: 1,         null: false
      t.string   :telephone_number,             limit: 45,  default: '',        null: false
      t.timestamps                                                              null: false
    end

    create_table :tills, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.integer  :last_z_transaction,           limit: 4,   default: 0,         null: false
      t.integer  :last_z_report_counter,        limit: 4,   default: 0,         null: false
      t.boolean  :locked,                       limit: 1,   default: false,     null: false
      t.boolean  :change_due,                   limit: 1,   default: false,     null: false
      t.text     :change_data,                                                  null: false
      t.boolean  :new_journal_on_startup,       limit: 1,   default: false,     null: false
      t.boolean  :allow_topup_purse_1,          limit: 1,   default: true,      null: false
      t.boolean  :allow_topup_purse_2,          limit: 1,   default: false,     null: false
      t.boolean  :allow_topup_purse_3,          limit: 1,   default: false,     null: false
      t.boolean  :allow_topup_purse_4,          limit: 1,   default: false,     null: false
      t.boolean  :allow_topup_purse_5,          limit: 1,   default: false,     null: false
      t.string   :purse_1_name,                 limit: 30,  default: '',        null: false
      t.string   :purse_2_name,                 limit: 30,  default: '',        null: false
      t.string   :purse_3_name,                 limit: 30,  default: '',        null: false
      t.string   :purse_4_name,                 limit: 30,  default: '',        null: false
      t.string   :purse_5_name,                 limit: 30,  default: '',        null: false
      t.boolean  :auto_surcharge,               limit: 1,   default: false,     null: false
      t.string   :version,                      limit: 10,  default: '',        null: false
      t.boolean  :compulsory_media_declaration, limit: 1,   default: false,     null: false
      t.timestamps                                                              null: false
    end

    create_table :transactions, force: :cascade do |t|
      t.string   :site_id,                      limit: 36,  default: '',        null: false
      t.integer  :location_id,                  limit: 4,   default: 0,         null: false
      t.references  :till,                      index: true
      t.integer  :tab_id,                       limit: 4,   default: 0,         null: false
      t.datetime :start_date_time,              default: '1900-01-01 00:00:00', null: false
      t.datetime :end_date_time,                default: '1900-01-01 00:00:00', null: false
      t.integer  :receipt_no,                   limit: 4,   default: 0,         null: false
      t.references  :cashier,                   index: true
      t.string   :cashier_name,                 limit: 30,  default: '',        null: false
      t.references  :media,                     index: true
      t.string   :media_name,                   limit: 30,  default: '',        null: false
      t.decimal  :total_amount,                             default: 0,         null: false
      t.decimal  :total_discounted_amount,                  default: 0,         null: false
      t.decimal  :total_nett_amount,                        default: 0,         null: false
      t.decimal  :total_vat_amount,                         default: 0,         null: false
      t.decimal  :total_discount,                           default: 0,         null: false
      t.decimal  :total_topup,                              default: 0,         null: false
      t.decimal  :total_paid_out,                           default: 0,         null: false
      t.decimal  :total_surcharge,                          default: 0,         null: false
      t.decimal  :amount_tendered,                          default: 0,         null: false
      t.decimal  :change_given,                             default: 0,         null: false
      t.boolean  :no_sale,                      limit: 1,   default: false,     null: false
      t.references  :card_holder,                index: true
      t.string   :card_number,                  limit: 30,  default: '',        null: false
      t.string   :card_name,                    limit: 30,  default: '',        null: false
      t.integer  :amount_purse_1,               limit: 4,   default: 0,         null: false
      t.decimal  :discounted_amount_purse_1,                default: 0,         null: false
      t.decimal  :nett_amount_purse_1,                      default: 0,         null: false
      t.decimal  :discount_purse_1,                         default: 0,         null: false
      t.decimal  :surcharge_purse_1,                        default: 0,         null: false
      t.decimal  :vat_amount_purse_1,                       default: 0,         null: false
      t.decimal  :start_balance_purse_1,                    default: 0,         null: false
      t.decimal  :end_balance_purse_1,                      default: 0,         null: false
      t.decimal  :amount_purse_2,                           default: 0,         null: false
      t.decimal  :discounted_amount_purse_2,                default: 0,         null: false
      t.decimal  :nett_amount_purse_2,                      default: 0,         null: false
      t.decimal  :discount_purse_2,                         default: 0,         null: false
      t.decimal  :surcharge_purse_2,                        default: 0,         null: false
      t.decimal  :vat_amount_purse_2,                       default: 0,         null: false
      t.decimal  :start_balance_purse_2,                    default: 0,         null: false
      t.decimal  :end_balance_purse_2,                      default: 0,         null: false
      t.decimal  :amount_purse_3,                           default: 0,         null: false
      t.decimal  :discounted_amount_purse_3,                default: 0,         null: false
      t.decimal  :nett_amount_purse_3,                      default: 0,         null: false
      t.decimal  :discount_purse_3,                         default: 0,         null: false
      t.decimal  :surcharge_purse_3,                        default: 0,         null: false
      t.decimal  :vat_amount_purse_3,                       default: 0,         null: false
      t.decimal  :start_balance_3,                          default: 0,         null: false
      t.decimal  :end_balance_3,                            default: 0,         null: false
      t.decimal  :amount_purse_4,                           default: 0,         null: false
      t.decimal  :discounted_amount_purse_4,                default: 0,         null: false
      t.decimal  :nett_amount_purse_4,                      default: 0,         null: false
      t.decimal  :discount_purse_4,                         default: 0,         null: false
      t.decimal  :surcharge_purse_4,                        default: 0,         null: false
      t.decimal  :vat_amount_purse_4,                       default: 0,         null: false
      t.decimal  :start_balance_4,                          default: 0,         null: false
      t.decimal  :end_balance_4,                            default: 0,         null: false
      t.decimal  :amount_purse_5,                           default: 0,         null: false
      t.decimal  :discounted_amount_purse_5,                default: 0,         null: false
      t.decimal  :nett_amount_purse_5,                      default: 0,         null: false
      t.decimal  :discount_purse_5,                         default: 0,         null: false
      t.decimal  :surcharge_purse_5,                        default: 0,         null: false
      t.decimal  :vat_amount_purse_5,                       default: 0,         null: false
      t.decimal  :start_balance_5,                          default: 0,         null: false
      t.decimal  :end_balance_5,                            default: 0,         null: false
      t.boolean  :did_not_make_it,              limit: 1,   default: false,     null: false
      t.boolean  :finalised,                    limit: 1,   default: false,     null: false
      t.timestamps                                                              null: false
    end

    add_foreign_key :transactions, :tills
    add_foreign_key :transactions, :cashiers
    add_foreign_key :transactions, :medias
    add_foreign_key :transactions, :card_holders


    create_table :transaction_items, force: :cascade do |t|
      t.references  :transaction,               index: true
      t.references  :cashier,                   index: true
      t.references  :plu,                       index: true
      t.string   :plu_name,                     limit: 30,  default: '',        null: false
      t.decimal  :plu_factor,                   limit: 4,   default: 0,         null: false
      t.decimal  :plu_factor_entered,           limit: 4,   default: 0,         null: false
      t.decimal  :plu_price,                    limit: 4,   default: 0,         null: false
      t.integer  :plu_price_level,              limit: 4,   default: 0,         null: false
      t.integer  :plu_group_id,                 limit: 4,   default: 0,         null: false
      t.decimal  :plu_price_level_1,            limit: 4,   default: 0,         null: false
      t.decimal  :plu_cost,                     limit: 4,   default: 0,         null: false
      t.references  :vat,                       index: true
      t.boolean  :void,                         limit: 1,   default: false,     null: false
      t.datetime :sale_date_time,               default: '1900-01-01 00:00:00', null: false
      t.references  :rp_sort_group,             index: true
      t.boolean  :kp_printed,                   limit: 1,   default: false,     null: false
      t.boolean  :condiment,                    limit: 1,   default: false,     null: false
      t.integer  :purse_no,                     limit: 4,   default: 0,         null: false
      t.decimal  :line_amount,                  limit: 4,   default: 0,         null: false
      t.decimal  :discounted_amount,            limit: 4,   default: 0,         null: false
      t.decimal  :single_discounted_amount,     limit: 4,   default: 0,         null: false
      t.decimal  :nett_amount,                  limit: 4,   default: 0,         null: false
      t.decimal  :discount,                     limit: 4,   default: 0,         null: false
      t.decimal  :surcharge_amount,             limit: 4,   default: 0,         null: false
      t.decimal  :vat_amount,                   limit: 4,   default: 0,         null: false
      t.decimal  :single_vat_amount,            limit: 4,   default: 0,         null: false
      t.boolean  :add_surcharge,                limit: 1,   default: false,     null: false
      t.timestamps                                                              null: false
    end

    add_foreign_key :transaction_items, :transactions
    add_foreign_key :transaction_items, :cashiers
    add_foreign_key :transaction_items, :plus
    add_foreign_key :transaction_items, :vats


    create_table :vats, force: :cascade do |t|
      t.string   :name,                         limit: 30,  default: '',        null: false
      t.decimal  :value,                                    default: 0,         null: false
      t.timestamps                                                              null: false
    end
    
  end
end
