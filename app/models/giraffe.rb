class Giraffe < ActiveRecord::Base
  def guess_age
    self[:height]/10
  end
end
