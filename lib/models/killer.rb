class Killer < ActiveRecord::Base
  has_many :victims
  has_many :death_causes, through: :victims
end
