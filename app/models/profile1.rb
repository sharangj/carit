class Profile1 < ActiveRecord::Base
 belongs_to :user 
 attr_accessible :birthdate, :dislikes, :gender, :hobbies, :likes, :name, :nationality, :phonenumber, :profession
  
end
