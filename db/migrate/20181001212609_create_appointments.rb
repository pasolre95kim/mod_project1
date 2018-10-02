class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.time :time
      t.integer :dog_id
      t.integer :groomer_id
      t.string :service
    end
  end
end
