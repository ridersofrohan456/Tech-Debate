class Debate < ActiveRecord::Base
  has_many :debatements
  has_many :users, through: :debatements

  has_many :comments
end
