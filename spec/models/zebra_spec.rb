require 'rails_helper'

RSpec.describe Zebra, type: :model do
  it "has weight" do
    expect(subject).to have_attribute(:weight)
  end
  
  it "returns weight as integer" do
    z = Zebra.create(weight: 100)
    expect(z.weight).to be(100) 
  end

  it "can be created" do
    z_count = Zebra.count
    z = Zebra.create(weight: 100)
    expect(Zebra.count).to be(z_count+1)
  end


end
