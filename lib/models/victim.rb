class Victim < ActiveRecord::Base
  belongs_to :killer
  belongs_to :death_cause

  def fullname
    "#{self.first_name} #{self.last_name}"
  end
end
