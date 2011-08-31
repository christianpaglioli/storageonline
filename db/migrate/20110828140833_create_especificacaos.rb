class CreateEspecificacaos < ActiveRecord::Migration
  def self.up
    create_table :especificacaos do |t|
      t.column :item_id, :integer
      t.column :equipamento_id, :integer
      t.column :quantidade, :integer
      t.column :atende, :boolean
      t.column :descricao, :string
     
      t.timestamps
    end
  end

  def self.down
    drop_table :especificacaos
  end
end
