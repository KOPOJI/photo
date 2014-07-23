require 'spec_helper'

describe "albums/show", :type => :view do
  before(:each) do
    @album = assign(:album, Album.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
