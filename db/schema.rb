# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110828140833) do

  create_table "categorias", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias_familias", :id => false, :force => true do |t|
    t.integer  "categoria_id"
    t.integer  "familias_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comparativos", :force => true do |t|
    t.date     "data"
    t.string   "descricao"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipamentos", :force => true do |t|
    t.string   "nome"
    t.date     "lancamento"
    t.string   "formato"
    t.float    "largura"
    t.float    "altura"
    t.float    "profundidade"
    t.float    "consumo"
    t.float    "btu"
    t.float    "peso"
    t.integer  "ru"
    t.integer  "oem_id"
    t.boolean  "oem"
    t.binary   "imagem"
    t.integer  "segmento_id"
    t.integer  "familia_id"
    t.integer  "fabricante_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipamentos_comparativos", :id => false, :force => true do |t|
    t.integer  "equipamento_id"
    t.integer  "comparativo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "especificacaos", :force => true do |t|
    t.integer  "item_id"
    t.integer  "equipamento_id"
    t.integer  "quantidade"
    t.boolean  "atende"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fabricantes", :force => true do |t|
    t.string   "nome"
    t.string   "site"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "familias", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "integras", :force => true do |t|
    t.integer  "equipamento_a_id"
    t.integer  "equipamento_b_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "categoria_id"
    t.string   "nome"
    t.string   "metrica"
    t.boolean  "atendimento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "segmentos", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "similars", :force => true do |t|
    t.integer  "equipamento_c_id"
    t.integer  "equipamento_d_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "nome"
    t.string   "senha"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
