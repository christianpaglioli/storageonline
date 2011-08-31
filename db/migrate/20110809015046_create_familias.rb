class CreateFamilias < ActiveRecord::Migration
  def self.up
    create_table :familias do |t|
      t.column :nome ,:string

      t.timestamps
    end
  end

  def self.down
    drop_table :familias
  end
end
