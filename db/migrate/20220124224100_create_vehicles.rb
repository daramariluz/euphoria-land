class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :license
      t.string :category
      t.string :color
      t.string :model

      t.timestamps
    end
  end
end
