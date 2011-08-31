class Especificacao < ActiveRecord::Base
  belongs_to :equipamento
  belongs_to :item
end
