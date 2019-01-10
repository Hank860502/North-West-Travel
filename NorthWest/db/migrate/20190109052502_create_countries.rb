class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|

    	t.string :name
    	t.text :description
    	t.text :reminder
      t.timestamps null: false
    end
  end
end
