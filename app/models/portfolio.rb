class Portfolio < ApplicationRecord
    
    validates_presence_of :title, :body, :main_image, :thumb_image
    
    # Two ways of getting a custom Scope
    # 1
    def self.angular 
        where(subtitle: 'Angular') 
    end 
    # 2
    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') } 

    
end
