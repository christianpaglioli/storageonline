class CreateCategoriasFamilias < ActiveRecord::Migration
  def self.up
    create_table :categorias_familias, :id=>false do |t|
      t.column :categoria_id, :integer
      t.column :familias_id, :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :categorias_familias
  end
end
