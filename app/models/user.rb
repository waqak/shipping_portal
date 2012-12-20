class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :password, :user_type_id, :username

  validates :username, :uniqueness => true

  belongs_to :user_type

  has_one :shipping_line, :dependent => :destroy
end
