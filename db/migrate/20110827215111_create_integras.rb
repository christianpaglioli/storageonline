class CreateIntegras < ActiveRecord::Migration
  def self.up
    create_table :integras, id=>false do |t|
      t.column :equipamento_a_id, :integer
      t.column :equipamento_b_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :integras
  end
end
