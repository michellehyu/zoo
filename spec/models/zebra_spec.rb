require 'rails_helper'

RSpec.describe Zebra, type: :model do

  describe "weight something" do 
    expect(subject).to have_attribute(:weight)
  end

end
