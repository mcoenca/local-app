class Bubble < ActiveRecord::Base

  validates_presence_of :name
  # to configure a different table name
  # Don't forget CamelCase vs  _
  # self.table_name = "super_bubbles"

  #attr_accessor already done for attributes names
  scope :np, lambda {|name| where(["name LIKE ?","%#{query}%"])}
end
