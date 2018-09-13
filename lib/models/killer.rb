require "pry"

class Killer < ActiveRecord::Base
  has_many :victims
  has_many :death_causes, through: :victims

  def self.all_killers
    Killer.all.collect do |killer|
      puts "#{killer.fullname} \n"
    end.join
  end

  def fullname
    "#{self.first_name} #{self.last_name}"
  end

  def show_victims
    self.victims.collect do |victim|
      victim.fullname
    end
  end

  def killer_methods
    uniq_death_causes = self.death_causes.uniq

    uniq_death_causes.each_with_index.map do |cause, index|
      "#{index + 1}. #{cause.name}"
    end.uniq
  end

  def macdonald_triad
    puts "The 'Macdonald triad' is a set of three factors that has been suggested (Macdonald 1963), if all three or any combination of two, are present together, to be predictive of later violent tendencies, particularly with relation to serial offenses.".bold
    puts "        \n"

    puts "Arson:".bold + "#{self.pyromania}"
    puts "     (the criminal act of deliberately setting fire to property)"
    puts "Cruelty to animals:".bold + " #{self.animal_torturer}"
    puts "     (including but not limited to, burning, torturing, killing, and dismemberings)"
    puts "Enuresis:".bold + " #{self.bed_wetter}"
    puts "     (unintentional bed-wetting during sleep, persistent after the age of five)"

  end


  def self.macdonald_triad_statistics
    array = Killer.all.select do |killer|
      killer.pyromania == true && killer.bed_wetter == true && killer.animal_torturer == true
    end
    count = (array.length.to_f / Killer.all.length.to_f) * 100
    puts "#{count} % of serial killers meet all 3 attributes."
  end
end
