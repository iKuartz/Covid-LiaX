# frozen_string_literal: true

# rubocop:disable Lint/UselessAssignment, Layout/LineLength

local1 = Localidade.create(estado: 'Rio de Janeiro', cidade: 'Itaipava', bairro: 'Centro', rua: 'Rua da saúde',
                           numero: 32, complemento: 'Bloco A')
local2 = Localidade.create(estado: 'Amazonas', cidade: 'Manaus', bairro: 'Eldorado', rua: 'Rua da imunização',
                           numero: 200, complemento: 'Casa 3')
local3 = Localidade.create(estado: 'São Paulo', cidade: 'Engenheiro Coelho', bairro: 'Correas',
                           rua: 'Rua Antônio Batistela', numero: 100, complemento: 'Prédio 2')
local4 = Localidade.create(estado: 'Mato Grosso', cidade: 'Cuiabá', bairro: 'Morada da Serra', rua: 'Av. das Torres',
                           numero: 59, complemento: 'Unidade 5')
pessoa1 = Pessoa.create(nome: 'Adamastor Rubens Maximus', cpf: '648.928.977-03', data_nascimento: '2000-02-20',
                        grupo_risco: false, telefone: '5553-5791', endereco_id: local1.id, email: 'rubens.maximus@vacinado.com')
pessoa2 = Pessoa.create(nome: 'Eleanor Bärchen', cpf: '000.012.354-61', data_nascimento: '1967-11-07', grupo_risco: true,
                        comorbidade: 'Pulmão direito comprometido por pneumonia na adolescência', telefone: '5554-4242', endereco_id: local2.id,
                        email: 'Elly_Baerchy_uwu@vacinado.com')
pessoa3 = Pessoa.create(nome: 'Elizabeth Alexandra Mary', cpf: 'estrangeira, RNM X123456-Y', data_nascimento: '1926-04-21',
                        grupo_risco: true, comorbidade: 'Idade avançada, participação em duas guerras mundiais e stress diário elevado',
                        telefone: 'Preferiu não divulgar', endereco_id: local3.id, email: 'Elisabeth2@vacinado.com')
pessoa4 = Pessoa.create(nome: 'João Montes das Neves', cpf: '258.654.357-91', data_nascimento: '2005-12-01',
                        grupo_risco: false, telefone: '5554-2589', endereco_id: local4.id, email: 'joao@vacinado.com')
local_de_aplicacao1 = LocalDeAplicacao.create(nome_do_local: 'Supermercado Leva Tudo', responsavel_id: pessoa1.id,
                                              ativo: false, cnpj: '02.001.245/0001-54', telefone: '5555-6432', email: 'levatudo@vacinado.com',
                                              endereco_id: local1.id)
local_de_aplicacao2 = LocalDeAplicacao.create(nome_do_local: 'Hospital das Clínicas', responsavel_id: pessoa2.id, ativo: true,
                                              cnpj: '50.001.789/0001-84', telefone: '5555-2356', email: 'hospitaldasclinicas@vacinado.com',
                                              endereco_id: local2.id)
fabricante1 = Fabricante.create(responsavel_id: pessoa1.id, nome: 'Instituto Butantã', cnpj: '64.001.815/0001-94',
                                telefone: '5555-1928', email: 'contato_butanta@vacinados.com', endereco_id: local2.id)
fabricante2 = Fabricante.create(responsavel_id: pessoa4.id, nome: 'Fundação Oswaldo Cruz', cnpj: '82.001.645/0001-82',
                                telefone: '5555-8246', email: 'contato_fiocruz@vacinados.com', endereco_id: local4.id)
detalhes1 = DetalhesDaVacina.create(nome_da_vacina: 'Oxford/Covishield (Fiocruz e Astrazeneca)',
                                    efeitos_colaterais: 'Febre leve em 10% dos casos, dores no corpo em 40% dos casos de primeira dose.',
                                    interacoes_medicamentosas: 'Não tomar aspirina nas próximas 48h.', permitidas: true)
lote1 = Lote.create(codigo: 'AZ784912-X', vacina_do_lote_id: detalhes1.id, fabricante_id: fabricante1.id, quantidade: 200,
                    destino_do_lote_id: local_de_aplicacao1.id)
lote2 = Lote.create(codigo: 'AZ725763-A', vacina_do_lote_id: detalhes1.id, fabricante_id: fabricante2.id, quantidade: 100,
                    destino_do_lote_id: local_de_aplicacao2.id)
imunizante1 = Imunizante.create(local_de_aplicacao_id: local_de_aplicacao1.id, data_de_aplicacao: '2021-06-13', paciente_id: pessoa3.id,
                                lote_id: lote1.id, nro_da_dose: 1)
imunizante1 = Imunizante.create(local_de_aplicacao_id: local_de_aplicacao2.id, data_de_aplicacao: '2021-09-15', paciente_id: pessoa3.id,
                                lote_id: lote2.id, nro_da_dose: 2)
inventario1 = Inventario.create(vacina_id: detalhes1.id, quantidade: 500, local_de_aplicacao_id: local_de_aplicacao2.id)
restricao1 = Restricao.create(primeira_dose: 1, segunda_dose: 1, terceira_dose: 2, quarta_dose: 3)
# rubocop:enable Lint/UselessAssignment, Layout/LineLength
