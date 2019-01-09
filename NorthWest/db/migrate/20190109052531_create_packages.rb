class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|

    	t.integer :price
    	t.text :description
    	t.text :reminder
    	t.integer :slot
    	t.string :category
      t.timestamps null: false
    end
  end
end
