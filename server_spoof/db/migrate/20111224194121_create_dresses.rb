class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.string :name
      t.string :designer_name
      t.boolean :love
      t.float :retail_cost
      t.float :rental_cost

      t.timestamps
    end
  end
end
