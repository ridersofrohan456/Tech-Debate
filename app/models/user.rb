class User < ActiveRecord::Base
  has_many :debatesUsers
  has_many :debates, through: :debatesUsers, source: :debatesUsers


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
