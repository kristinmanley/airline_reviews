class CreateAirlines < ActiveRecord::Migration
  def change
    create_table :airlines do |t|
      t.string :airline_name

      t.timestamps

    end
  end
end
