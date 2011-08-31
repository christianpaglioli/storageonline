class CreateEquipamentosComparativos < ActiveRecord::Migration
  def self.up
    create_table :equipamentos_comparativos, :id => false do |t|
      t.column :equipamento_id, :integer
      t.column :comparativo_id, :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :equipamentos_comparativos
  end
end
