ActiveRecord : : Schema.define (version : 202211071622865) do 
    create_table "charges", force : : cascade do |t| 
        t.integer "user_id" 
        t.string "stripe_id" 
        t.integer "amount" 
        t.string  "card_last4"
        t.string "card_type" 
        t.string "card_exp_month" 
        t.string "card_exp_year" 
        t.datetime "created_at" , null : false 
        t.datetime "updated_at" , null : false 

    end 
    add_index "charges" , ["stripe_id"] ,name : "index_charges_on_stripe_id" , unique : true 

    create_table "episodes" ,force : : cascade do |t| 
        t.string "title" 
        t.text "description"
        t.datetime "created_at" , null : false 
        t.datetime "updated_at" , null : false 

    end 
   create_table "users" , force : : cascade do |t| 
    t.string "email" ,  default: "", null: false
    t.string "encrypted_password" default: "", null: false
    t.string "reset_password_token" 
    t.datetime "reset_password_sent_at"
    t.datetime "rember_creadted_at" 
    t.integer "sign_in_count"   default: "", null: false
    t.datetime "current_sign_in_at" 
    t.datetime "last_sign_in_at"
    t.string  "current_sign_in_ip"
    t.string  "last_sign_in_ip"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string "stripe_id" 
    t.string   "stripe_subscription_id"
    t.string   "card_last4"
    t.integer  "card_exp_month"
    t.integer  "card_exp_year"
    t.string   "card_type"
  end
   
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
end 

