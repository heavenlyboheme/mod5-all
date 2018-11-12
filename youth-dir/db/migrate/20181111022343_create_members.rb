class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.belongs_to :group, foreign_key: true
      t.string :name
      t.date :birthday
      t.string :email

      t.timestamps
    end
  end
end
