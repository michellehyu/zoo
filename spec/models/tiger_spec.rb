require 'rails_helper'

RSpec.describe Tiger, type: :model do
  describe "need food" do 
    expect(subject).to have_attribute(:appetite)
  end
end
