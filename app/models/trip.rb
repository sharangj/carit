class Trip < ActiveRecord::Base
  attr_accessible :comments, :from, :maxriders, :starttime, :to, :tripdate, :via
  belongs_to :user
end
