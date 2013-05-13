require 'spec_helper'

describe "artists/show" do
  before(:each) do
    @artist = assign(:artist, stub_model(Artist,
      :name => "Name",
      :age => 1,
      :is_available => false,
      :genre => "Genre",
      :instrument_played => "Instrument Played",
      :too_old_to_rock_n_roll => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/Genre/)
    rendered.should match(/Instrument Played/)
    rendered.should match(/false/)
  end
end
