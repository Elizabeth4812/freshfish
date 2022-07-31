class AddCampoFecha < ActiveRecord::Migration[7.0]
  def change
    add_column :contactos, :fecha, :datetime
  end
end
