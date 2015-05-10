require 'rails_helper'

RSpec.describe Giraffe, type: :model do
  it "has height" do
    expect(subject).to have_attribute(:height)
  end
  
  it "returns height as integer" do
    g = Giraffe.create(height: 100)
    expect(g.height).to be(100) 
  end

  it "can be created" do
    g_count = Giraffe.count
    g = Giraffe.create(height: 100)
    expect(Giraffe.count).to be(g_count+1)
  end

  it "can estimate age base on height" do
    g = Giraffe.create(height: 100)
    expect(g.guess_age).to eq(10)
  end
end
