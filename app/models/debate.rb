class Debate < ActiveRecord::Base
  has_many :debatesUsers
  has_many :users, through: :debatesUsers, source: :debatesUsers

  has_many :commentsra
end
