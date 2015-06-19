class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
    	t.string :name 
    	t.decimal :price 

    	t.timestamps
    end
  end

  def down
  	drop_table :pal
  end
  
end
