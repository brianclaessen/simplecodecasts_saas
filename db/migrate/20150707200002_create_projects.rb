class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :street_name
      t.integer :house_number
      t.string :postalcode
      t.integer :price
      t.integer :daysofwork
      t.text :description
      t.timestamps
    end
  end
end
