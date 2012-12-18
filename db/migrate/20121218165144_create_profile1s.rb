class CreateProfile1s < ActiveRecord::Migration
  def change
    create_table :profile1s do |t|
      t.string :name
      t.date :birthdate
      t.string :gender
      t.string :profession
      t.string :nationality
      t.integer :phonenumber
      t.text :hobbies
      t.text :likes
      t.text :dislikes

      t.timestamps
    end
  end
end
