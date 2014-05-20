class Bubble < ActiveRecord::Base
  has_secure_password
  validates :name, :presence => true, :length => {:within => 4...12}, :uniqueness => true
  validates_length_of :feeling, :maximum => 30
  # to configure a different table name
  # Don't forget CamelCase vs  _
  # self.table_name = "super_bubbles"

  #attr_accessor already done for attributes names
  scope :np, lambda {|name| where(["name LIKE ?","%#{query}%"])}
end
