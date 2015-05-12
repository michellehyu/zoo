require 'rails_helper'

RSpec.describe Tiger, type: :model do
  it "needs food" do
    expect(subject).to have_attribute(:appetite)
  end
  
  it "returns appetite as integer" do
    t = Tiger.create(appetite: 100)
    expect(subject[:appetite]).to be(100) 
  end

  it "appetite defaults to 100" do
    t = Tiger.create  
    expect(t[:appetite]).to be(100)
  end

  it "should be hungry" do
    expect(subject.hungry).to be(true)
  end
    
  it "eats zebra" do
    z = Zebra.create(weight: 100)
    z_count = Zebra.count
    t = Tiger.create(appetite: 100)
    t.eat z
    expect(t.appetite).to be(0)
    expect(t.hungry).to be(false)
    expect(Zebra.count).to be(z_count-1)
  end
end
