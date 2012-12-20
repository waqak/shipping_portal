class ShippingLine < ActiveRecord::Base
  attr_accessible :address, :contact_number, :contact_person, :email, :user_id
  
  belongs_to :user
  
  has_many :ships, :dependent => :destroy
end
