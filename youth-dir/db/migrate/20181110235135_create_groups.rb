class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :address
      t.string :leader
      t.string :number
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
