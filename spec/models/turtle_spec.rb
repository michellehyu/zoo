require 'rails_helper'

RSpec.describe Turtle, type: :model do
  it "has status" do
    expect(subject).to have_attribute(:status)
  end
  
  it "returns status as a integer" do
    t = Turtle.create(status: :hide)
    expect(t[:status]).to be(0) 
  end

  it "has a readable status" do
    t = Turtle.create(status: :hide)
    expect(t.status).to eq("hide")
  end

  it "can hide" do
    t = Turtle.create(status: :hide)
    t.emerge!
    expect(t.status).to eq("emerge")
  end

  it "can emerge" do
    t = Turtle.create(status: :emerge)
    t.hide!
    expect(t.status).to eq("hide")
  end

end
