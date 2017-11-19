class CreateJerries < ActiveRecord::Migration[5.1]
  def change
    create_table :jerries do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
