class AddDescriptionToVehicles < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :description, :text
  end
end
