class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :departure_airport
      t.string :destination_airport
      t.string :route_name

      t.timestamps

    end
  end
end
