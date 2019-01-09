class CreateDepartures < ActiveRecord::Migration
  def change
    create_table :departures do |t|

    	t.dates :start
    	t.dates :end
      t.timestamps null: false
    end
  end
end
