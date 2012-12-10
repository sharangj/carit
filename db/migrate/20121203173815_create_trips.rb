class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :from
      t.string :to
      t.string :via
      t.date :tripdate
      t.time :starttime
      t.integer :maxriders
      t.text :comments

      t.timestamps
    end
  end
end
