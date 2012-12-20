class Ship < ActiveRecord::Base
  attr_accessible :load_capacity, :ship_make, :ship_model, :ship_model_year, :shipping_line_id, :volume_capacity
end
