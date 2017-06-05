class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :location
      t.integer :postal_code
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
