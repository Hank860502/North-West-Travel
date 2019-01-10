class CreateDepartures < ActiveRecord::Migration
  def change
    create_table :departures do |t|

    	t.date :start
    	t.date :end
      t.timestamps null: false
    end
  end
end
