class Trip < ActiveRecord::Base
  attr_accessible :comments, :from, :maxriders, :starttime, :to, :tripdate, :via
end
