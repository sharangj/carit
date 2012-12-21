class Profile1 < ActiveRecord::Base
  
 attr_accessible :birthdate, :dislikes, :gender, :hobbies, :likes, :name, :nationality, :phonenumber, :profession
 belongs_to :user 
end
