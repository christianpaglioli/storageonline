class CreateEquipamentos < ActiveRecord::Migration
  def self.up
    create_table :equipamentos do |t|
      t.column :nome, :string
      t.column :lancamento, :date
      t.column :formato, :string
      t.column :largura, :float
      t.column :altura, :float
      t.column :profundidade, :float
      t.column :consumo, :float
      t.column :btu, :float
      t.column :peso, :float
      t.column :ru, :integer
      t.column :oem_id, :integer
      t.column :oem, :boolean
      t.column :imagem, :blob
      t.column :segmento_id, :integer
      t.column :familia_id, :integer
      t.column :fabricante_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :equipamentos
  end
end
