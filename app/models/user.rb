class User < ActiveRecord::Base
  has_one :wish_list
  has_many :wish_list_items, through: :wish_list

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
