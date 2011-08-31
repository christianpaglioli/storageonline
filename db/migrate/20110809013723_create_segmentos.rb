class CreateSegmentos < ActiveRecord::Migration
  def self.up
    create_table :segmentos do |t|
      t.column :nome, :string
      t.column :descricao, :string

      t.timestamps
    end
  end

  def self.down
    drop_table :segmentos
  end
end
