class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :user_id
      t.string :address
      t.string :city
      t.integer :phone

      t.timestamps
    end
  end
end
