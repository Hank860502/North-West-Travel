class CreatePackagesDepartures < ActiveRecord::Migration
  def change
    create_table :packages_departures do |t|

    	t.integer :package_id, null: false
      t.integer :departure_id, null: false
      t.timestamps null: false
    end
  end
end
