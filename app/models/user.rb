class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Todo: Assign mass assignment (attr_accesible: )
  # Todo: add validation to the attributes
  # Todo: add association to shirt.rb
  has_many :shirts

  protected
  def confirmation_require?
    false
  end
end
