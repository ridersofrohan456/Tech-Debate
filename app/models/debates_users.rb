class DebatesUsers < ActiveRecord::Base
  has_and_belongs_to_many :debates
  has_and_belongs_to_many :users
end
