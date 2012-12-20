class UserType < ActiveRecord::Base
  attr_accessible :description, :user_type

  has_many :users, :dependent => :destroy
end
