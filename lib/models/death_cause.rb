class DeathCause < ActiveRecord::Base
  has_many :victims
  has_many :killers, through: :victims
end
