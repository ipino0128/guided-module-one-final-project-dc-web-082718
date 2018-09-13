require "pry"

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

  def self.death_cause_statistics
    counts = Hash.new 0

    array = Victim.all.collect do |victim|
      victim.death_cause
    end
    array.each do |word|
      counts[word] += 1
      # binding.pry
    end
    total = array.length.to_f
    counts.collect do |key, value|
      percent = (value.to_f/total)*100
      puts "#{key.name}".bold + " = #{percent.round(1)}%"
    end
    counts

  end

  def self.location_statistics
    counts = Hash.new 0

    array = Victim.all.collect do |victim|
      victim.location_of_death
    end
    array.each do |word|
      counts[word] += 1
      # binding.pry
    end
    total = array.length.to_f
    counts.collect do |key, value|
      percent = (value.to_f/total)*100
      puts "#{key}".bold + " = #{percent.round(1)}%"
    end
    counts
  end

  def self.age_statistics
    array = []
    Victim.all.collect do |victim|
        array << victim.age
    end
    average = array.inject(:+) / array.size
    puts "#{average} years old."
  end


  def self.gender_statistics
    counts = Hash.new 0

    array = Victim.all.collect do |victim|
      victim.gender
    end
    array.each do |word|
      counts[word] += 1
      # binding.pry
    end
    total = array.length.to_f
    counts.collect do |key, value|
      percent = (value.to_f/total)*100
      puts "#{key}".bold + " = #{percent.round(1)}%"
    end
    counts
    end



end
