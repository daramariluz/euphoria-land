class AddPhotoUrlToVehicle < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :photo_url, :string
  end
end
