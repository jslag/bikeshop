class Order < ActiveRecord::Base
  belongs_to :frame_color

  validates :customer_name, :customer_email, :description, :price, presence: true
end
