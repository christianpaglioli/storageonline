class Equipamento < ActiveRecord::Base
  belongs_to :segmento
  belongs_to :fabricante
  belongs_to :familia
  has_and_belongs_to_many :comparativos
  has_many :especificacaos
  has_many :itens ,:through => :especificacaos
  has_and_belongs_to_many (:equipamentos,:join_table=>:integras,
    :foreign_key=>:equipamento_a_id,
     :association_foreign_key=>:equipamento_b_id)
    has_and_belongs_to_many (:equipamentos,:join_table=>:similars,
    :foreign_key=>:equipamento_c_id,
     :association_foreign_key=>:equipamento_d_id)
end
