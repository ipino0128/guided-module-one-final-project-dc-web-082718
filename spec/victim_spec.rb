
require_relative '../lib/models/victim.rb'
require_relative '../config/environment.rb'

describe "Victim" do

  let (:checker) {Victim.find(12)}

  it "returns the victim's fullname" do
    expect(checker.fullname).to eq("John Butkovitch")
    end

  it "returns the cause of death for a victim" do
    expect(checker.show_death_cause).to eq("Strangulation")
  end

  end
