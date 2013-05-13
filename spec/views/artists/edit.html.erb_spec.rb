require 'spec_helper'

describe "artists/edit" do
  before(:each) do
    @artist = assign(:artist, stub_model(Artist,
      :name => "MyString",
      :age => 1,
      :is_available => false,
      :genre => "MyString",
      :instrument_played => "MyString",
      :too_old_to_rock_n_roll => false
    ))
  end

  it "renders the edit artist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", artist_path(@artist), "post" do
      assert_select "input#artist_name[name=?]", "artist[name]"
      assert_select "input#artist_age[name=?]", "artist[age]"
      assert_select "input#artist_is_available[name=?]", "artist[is_available]"
      assert_select "input#artist_genre[name=?]", "artist[genre]"
      assert_select "input#artist_instrument_played[name=?]", "artist[instrument_played]"
      assert_select "input#artist_too_old_to_rock_n_roll[name=?]", "artist[too_old_to_rock_n_roll]"
    end
  end
end
