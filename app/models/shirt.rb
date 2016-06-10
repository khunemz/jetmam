class Shirt < ActiveRecord::Base
  # Todo: Add Validations to attribute
  # Todo: Add Mass Assignment to attribute
  attr_accessor :color , :size, :neck , :amount , :total
  # Todo: Add Association to User
  belongs_to :user
end
