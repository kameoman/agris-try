class CreateAgris < ActiveRecord::Migration[5.2]
  def change
    create_table :agris do |t|
      t.integer :user_id
      t.string :name
      t.integer :date
      t.integer :kg
      t.string :comment

      t.timestamps
    end
  end
end
