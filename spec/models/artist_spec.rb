require 'spec_helper'

describe Artist do
  subject(:artist) { create(:artist) }
  
  it "has a valid factory" do
    expect(subject).to be_valid
  end
  
  it "is invalid without a name" do
    expect(build(:artist, name: nil)).not_to be_valid
  end
  
  it "is invalid with an age less than 13" do
    expect(build(:artist, age: 12)).not_to be_valid
  end
  
  it "is invalid with an age greater than 99" do
    expect(build(:artist, age: 100)).not_to be_valid
  end
  
  it "is invalid with an instrument_played not in guitar, drums, bass" do
    expect(build(:artist, instrument_played: "synthesizer")).not_to be_valid
  end

end
