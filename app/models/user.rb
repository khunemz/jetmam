class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Todo: Assign mass assignment
  attr_accessor :room , :building , :lane , :road, :address_number ,
                :village_number , :subdistrict , :district , :province,
                :postal , :phone , :card_last_four , :omise_customer_token,
                :paypal_cutomer_token , :facebook_customer_token ,:twitter_customer_token
  # Todo: add validation to the attributes
  validates_presence_of :address_number , :village_number , :subdistrict,
                        :district , :province , :postal, :phone

  has_many :shirts

  protected
  def confirmation_require?
    false
  end
end
