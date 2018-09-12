class Victim < ActiveRecord::Base
  belongs_to :killer
  belongs_to :death_cause

  def self.all_victims
    Victim.all.collect do |victim|
      puts "#{victim.fullname} \n"
    end.join
  end

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
