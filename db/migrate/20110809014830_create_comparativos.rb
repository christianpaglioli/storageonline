class CreateComparativos < ActiveRecord::Migration
  def self.up
    create_table :comparativos do |t|
      t.column :data, :date
      t.column :descricao, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :comparativos
  end
end
