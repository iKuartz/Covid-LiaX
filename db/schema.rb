# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength

ActiveRecord::Schema[7.0].define(version: 20_220_803_221_446) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'detalhes_da_vacinas', force: :cascade do |t|
    t.string 'nome_da_vacina'
    t.text 'efeitos_colaterais'
    t.text 'interacoes_medicamentosas'
    t.string 'permitidas'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'fabricantes', force: :cascade do |t|
    t.string 'nome'
    t.string 'cnpj'
    t.string 'telefone'
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'endereco_id', null: false
    t.bigint 'responsavel_id', null: false
    t.index ['endereco_id'], name: 'index_fabricantes_on_endereco_id'
    t.index ['responsavel_id'], name: 'index_fabricantes_on_responsavel_id'
  end

  create_table 'imunizantes', force: :cascade do |t|
    t.date 'data_de_aplicacao'
    t.integer 'nro_da_dose'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'paciente_id', null: false
    t.bigint 'lote_id', null: false
    t.bigint 'local_de_aplicacao_id', null: false
    t.index ['local_de_aplicacao_id'], name: 'index_imunizantes_on_local_de_aplicacao_id'
    t.index ['lote_id'], name: 'index_imunizantes_on_lote_id'
    t.index ['paciente_id'], name: 'index_imunizantes_on_paciente_id'
  end

  create_table 'inventarios', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'local_de_aplicacao_id', null: false
    t.bigint 'Vacina_id', null: false
    t.index ['Vacina_id'], name: 'index_inventarios_on_Vacina_id'
    t.index ['local_de_aplicacao_id'], name: 'index_inventarios_on_local_de_aplicacao_id'
  end

  create_table 'local_de_aplicacao_inventarios', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'local_de_aplicacaos', force: :cascade do |t|
    t.string 'nome_do_local'
    t.boolean 'ativo'
    t.string 'cnpj'
    t.string 'telefone'
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'endereco_id', null: false
    t.bigint 'responsavel_id', null: false
    t.index ['endereco_id'], name: 'index_local_de_aplicacaos_on_endereco_id'
    t.index ['responsavel_id'], name: 'index_local_de_aplicacaos_on_responsavel_id'
  end

  create_table 'localidades', force: :cascade do |t|
    t.string 'estado'
    t.string 'cidade'
    t.string 'bairro'
    t.string 'rua'
    t.integer 'numero'
    t.string 'complemento'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'lotes', force: :cascade do |t|
    t.string 'codigo'
    t.integer 'quantidade'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'destino_do_lote_id', null: false
    t.bigint 'fabricante_id', null: false
    t.bigint 'vacina_do_lote_id', null: false
    t.index ['destino_do_lote_id'], name: 'index_lotes_on_destino_do_lote_id'
    t.index ['fabricante_id'], name: 'index_lotes_on_fabricante_id'
    t.index ['vacina_do_lote_id'], name: 'index_lotes_on_vacina_do_lote_id'
  end

  create_table 'pessoas', force: :cascade do |t|
    t.string 'nome'
    t.string 'cpf'
    t.date 'data_nascimento'
    t.boolean 'grupo_risco'
    t.text 'comorbidade'
    t.string 'telefone'
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'endereco_id', null: false
    t.index ['endereco_id'], name: 'index_pessoas_on_endereco_id'
  end

  create_table 'restricaos', force: :cascade do |t|
    t.integer 'primeira_dose'
    t.integer 'segunda_dose'
    t.integer 'terceira_dose'
    t.integer 'quarta_dose'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'password_digest'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'fabricantes', 'localidades', column: 'endereco_id'
  add_foreign_key 'fabricantes', 'pessoas', column: 'responsavel_id'
  add_foreign_key 'imunizantes', 'local_de_aplicacaos'
  add_foreign_key 'imunizantes', 'lotes'
  add_foreign_key 'imunizantes', 'pessoas', column: 'paciente_id'
  add_foreign_key 'inventarios', 'detalhes_da_vacinas', column: 'Vacina_id'
  add_foreign_key 'inventarios', 'local_de_aplicacaos'
  add_foreign_key 'local_de_aplicacaos', 'localidades', column: 'endereco_id'
  add_foreign_key 'local_de_aplicacaos', 'pessoas', column: 'responsavel_id'
  add_foreign_key 'lotes', 'detalhes_da_vacinas', column: 'vacina_do_lote_id'
  add_foreign_key 'lotes', 'fabricantes'
  add_foreign_key 'lotes', 'local_de_aplicacaos', column: 'destino_do_lote_id'
  add_foreign_key 'pessoas', 'localidades', column: 'endereco_id'
end
# rubocop:enable Metrics/BlockLength
