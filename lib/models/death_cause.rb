class DeathCause < ActiveRecord::Base
  has_many :victims
  has_many :killers, through: :victims

  def show_victims
    self.victims.collect do |victim|
      victim.fullname
    end.uniq
  end

  def show_killers
    self.killers.collect do |killer|
      killer.fullname
    end.uniq
  end

end
