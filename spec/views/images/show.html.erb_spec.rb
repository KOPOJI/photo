require 'spec_helper'

describe "images/show", :type => :view do
  before(:each) do
    @image = assign(:image, Image.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
