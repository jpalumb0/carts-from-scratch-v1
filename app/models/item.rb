class Item < ApplicationRecord
    belongs_to :cart
    belongs_to :vendor
    
    has_one :user, :through => :cart, :source => :user
end
