require 'spec_helper'

describe "artists/index" do
  before(:each) do
    assign(:artists, [
      stub_model(Artist,
        :name => "Name",
        :age => 1,
        :is_available => false,
        :genre => "Genre",
        :instrument_played => "Instrument Played",
        :too_old_to_rock_n_roll => false
      ),
      stub_model(Artist,
        :name => "Name",
        :age => 1,
        :is_available => false,
        :genre => "Genre",
        :instrument_played => "Instrument Played",
        :too_old_to_rock_n_roll => false
      )
    ])
  end

  it "renders a list of artists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Instrument Played".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
