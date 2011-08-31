class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.column :categoria_id, :integer
      t.column :nome, :string
      t.column :metrica, :string
      t.column :atendimento, :boolean
      
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
