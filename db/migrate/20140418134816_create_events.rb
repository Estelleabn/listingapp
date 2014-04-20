class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.integer :creator_id
      t.datetime :time
      t.text :info
      t.string :address
      t.string :city
      t.integer :attendee_id
      t.integer :product_id

      t.timestamps
    end
  end
end
