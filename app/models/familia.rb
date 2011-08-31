class Familia < ActiveRecord::Base
has_many :equipamentos
has_and_belongs_to_many :categorias
end
