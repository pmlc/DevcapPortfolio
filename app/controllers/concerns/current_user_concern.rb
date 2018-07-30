def current_user
    extend ActiveSupport::Concern 
    
    super || guest_user
                                    
    def guest_user
      OpenStruct.new(name: "Guest User", 
                    first_name: "Guest", 
                    last_name: "User", 
                    email: "guest@example.com")   
    end

end