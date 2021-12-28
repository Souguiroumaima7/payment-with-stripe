class ApplicationController < ActionController::Base
#prevent CSRF attacks by raising an exception 
For Apis, you may want to use :null_session instead 
protect_from_forgery with :exception 

def cureent_user_subscribed?
end
helper_method : current_user_subscribed? 
end

