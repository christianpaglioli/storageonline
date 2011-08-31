class Categoria < ActiveRecord::Base
  has_and_belongs_to_many :familias
  has_many :items
end
