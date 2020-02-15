class CreateCrafts < ActiveRecord::Migration[6.0]
  def change
    create_table :crafts do |t|
      t.string :pdtImg
      t.string :pdtName
      t.string :pdtCategory
      t.integer :pdtPrice

      t.timestamps
    end
  end
end
