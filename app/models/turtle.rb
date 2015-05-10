class Turtle < ActiveRecord::Base
  enum status: [:hide, :emerge]
end
