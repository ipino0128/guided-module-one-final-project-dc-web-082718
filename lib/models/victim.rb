class Victim < ActiveRecord::Base
  belongs_to :killer
  belongs_to :death_cause

  def fullname
    "#{self.first_name} #{self.last_name}"
  end

  def show_killer
    "#{self.killer.fullname}"
  end

  def show_death_cause
    "#{self.death_cause.name}"
  end

end
