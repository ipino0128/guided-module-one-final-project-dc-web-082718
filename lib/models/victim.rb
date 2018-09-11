class Victim < ActiveRecord::Base
  belongs_to :killer
  belongs_to :deathcause
end
