class Trip < ActiveRecord::Base
  attr_accessible :comments, :from, :maxriders, :starttime, :to, :tripdate, :via
  belongs_to :user
  def self.search(search)
  if search
    search(:all, :conditions => {:from => "%#{search}%"})
  else
    find(:all)
  end
  end
end
