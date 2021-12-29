require "administrate/base_dashboard"
 
class UserDashboard < Administrate::BaseDashboard
    ATTRIBUTE_TYPES = {
    charges: Field::HasMany,
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String,
    last_sign_in_ip: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    stripe_id: Field::String,
    stripe_subscription_id: Field::String,
    card_last4: Field::String,
    card_exp_month: Field::Number,
    card_exp_year: Field::Number,
    card_type: Field::String,
    password: PasswordField,
    password_confirmation: PasswordField
  }
  COLLECTION_ATTRIBUTES = [
    :charges,
    :id,
    :email,
    #:encrypted_password,
  ]
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys
  FORM_ATTRIBUTES = [
    :charges,
    :email,
    :password,
    :password_confirmation,
    #:encrypted_password,
    #:reset_password_token,
    #:reset_password_sent_at,
    #:remember_created_at,
    #:sign_in_count,
    #:current_sign_in_at,
    #:last_sign_in_at,
    #:current_sign_in_ip,
    #:last_sign_in_ip,
    :stripe_id,
    :stripe_subscription_id,
    :card_last4,
    :card_exp_month,
    :card_exp_year,
    :card_type,
  ]
  def display_resource(user)
       "User ## {user.id}"
     end
    end 
    