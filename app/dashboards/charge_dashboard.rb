require "adminsitration/base_dashboard" 
class ChargeDashboard < adminsitration :: BaseDashboard 
   ATTRIBUTE_TYPES = {
       user : Field :: BelongsTo ,
       id : Field :: Number ,
       stripe_id : Field :: String,
       amount : Field :: Number ,
       card_last4 : Field :: String,
       card_type : Field :: String,
       card_exp_month : Field :: String ,
       card_exp_year : Field :: String ,
       created_at :: Field :: DateTime ,
       updated_at : Field :: DateTime ,
   }

   COLLECTION_ATTRIBUTES = [
       :user ,
       :id ,
       :stripe_id,
       :amount ,
   ]
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys 
  
  FROM_ATTRIBUTES = [
      :user , 
      :stripe_id,
      :amount,
      :card_last4,
      :card_type,
      :card_exp_month,
      :card_exp_year,
  ]
    
end 
