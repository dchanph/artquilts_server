class CreateCraftkits < ActiveRecord::Migration[6.0]
  def change
    create_table :craftkits do |t|
      t.references :craft, null: false, foreign_key: true
      t.references :donatekit, null: false, foreign_key: true
      t.integer :qty

      t.timestamps
    end
  end
end
