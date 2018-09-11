class Killer < ActiveRecord::Base
  has_many :victims
  has_many :death_causes, through: :victims

  def fullname
    "#{self.first_name} #{self.last_name}"
  end
end
