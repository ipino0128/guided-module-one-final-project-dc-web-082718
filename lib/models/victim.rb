class Victim < ActiveRecord::Base
  belongs_to :killer
  belongs_to :death_cause
end
