def index 
    super 
    @resources = Charge.all.paginate(10,params[:page]) 
end 
def find_resource(param) 
    Charge.find_by!(slug : params) 
  end 
   end 
end 
