class CreateDonatekits < ActiveRecord::Migration[6.0]
  def change
    create_table :donatekits do |t|
      t.string :kitImg
      t.string :kitName
      t.string :kitCategory
      t.text :kitDetails
      t.integer :kitCost

      t.timestamps
    end
  end
end
