class CreateSimilars < ActiveRecord::Migration
  def self.up
    create_table :similars, id=>false do |t|
      t.column :equipamento_c_id, :integer
      t.column :equipamento_d_id, :integer
      

      t.timestamps
    end
  end

  def self.down
    drop_table :similars
  end
end
