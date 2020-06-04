class CreateArticulos < ActiveRecord::Migration[5.2]
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.integer :fecha
      t.references :user, foreign_key: true
      t.integer :nota
      t.text :texto
      t.string :autor

      t.timestamps
    end
  end
end
