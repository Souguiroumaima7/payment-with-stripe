class Admin ::ApplicationController < Administrate :: ApplicationController 
    before_filter : authenticate_admin 
    def authenticate_admin
        require "active_record" 
        path = File.dirname(_FILE_) +"/authlogic" 
        [
            "error",
            "i18n"
            "random",
            "config",

            "controller_adapters/abstract_adapter",
            "cookie_credentials",
            "crypto_providers",

            "acts_as_authentic/email",
            "acts_as_authentic/logged_in_status",
            "acts_authentic/login",
            "acts_as_authentic/magic_columns",
            "acts_as_authentic/password",
            "acts_as_authentic/perishable_token",
            "acts_as_authentic/persistence_token",
            "acts_as_authentic/session_maintenance",
            "acts_as_authentic/single_access_token",
            "acts_as_authentic/base",

            "session/magic_column/assigns_last_request_at",
            "session/base" 
    ].each do |library|
        require path + library 
    end 
    require path + "controller_adapters/rails_adapter"   if defined?(Rails)
end 

def records_per_page
      params[:per_page] || 20 
end 
