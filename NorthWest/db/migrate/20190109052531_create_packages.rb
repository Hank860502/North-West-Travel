class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|

    	t.string :name
    	t.integer :price
    	t.text :description
    	t.text :reminder
    	t.integer :slot
    	t.integer :availability
    	t.string :category
      t.timestamps null: false
    end
  end
end
