class Tiger < ActiveRecord::Base
  def appetite
    self[:appetite] || 100
  end

  def hungry 
    self.appetite > 0 ? true : false
  end
  
  def eat(zebra)
    self[:appetite] = self.appetite - zebra[:weight]
    zebra.destroy
  end 
end
