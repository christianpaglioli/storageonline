class CreateCategorias < ActiveRecord::Migration
  def self.up
    create_table :categorias do |t|
      t.column :nome, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :categorias
  end
end
