class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :departure_airport
      t.string :destination_airport
      t.string :flight_name
      t.integer :airline_id
      t.integer :route_id

      t.timestamps

    end
  end
end
