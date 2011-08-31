class CreateFabricantes < ActiveRecord::Migration
  def self.up
    create_table :fabricantes do |t|
      t.column :nome, :string
      t.column :site, :string
      t.column :descricao, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :fabricantes
  end
end
