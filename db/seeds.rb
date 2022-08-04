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
pessoa1 = Pessoa.create(nome: 'Adamastor Rubens Maximus', cpf: '648.928.977-03', data_nascimento: 2000 - 0o2 - 20,
                        grupo_risco: false, telefone: '5553-4242', endereco: endereco1, email: 'rubens.maximus@vacinado.com')
pessoa2 = Pessoa.create(nome: 'Eleanor Bärchen', cpf: '000.012.354-61', data_nascimento: 1967 - 11 - 0o7, grupo_risco: true,
                        comorbidade: 'Pulmão direito comprometido por pneumonia na adolescência', telefone: '5554-4242', endereco: endereco2,
                        email: 'Elly_Baerchy_uwu@vacinado.com')
pessoa3 = Pessoa.create(nome: 'Elizabeth Alexandra Mary', cpf: 'estrangeira, RNM X123456-Y', data_nascimento: 1926 - 0o4 - 21,
                        grupo_risco: true, comorbidade: 'Idade avançada, participação em duas guerras mundiais e stress diário elevado',
                        telefone: 'Preferiu não divulgar', endereco: endereco3, email: 'Elisabeth2@vacinado.com')
pessoa4 = Pessoa.create(nome: 'João Montes das Neves', cpf: '258.654.357-91', data_nascimento: 2005 - 12 - 0o1,
                        grupo_risco: false, telefone: '5554-2589', endereco: endereco4, email: 'joao@vacinado.com')
local_de_aplicacao1 = LocalDeAplicacao.create(nome_do_local: 'Supermercado Leva Tudo', responsável: pessoa1,
                                              ativo: false, cnpj: '02.001.245/0001-54', telefone: '5555-6432', email: 'levatudo@vacinado.com',
                                              endereco: local1)
local_de_aplicacao2 = LocalDeAplicacao.create(nome_do_local: 'Hospital das Clínicas', responsável: pessoa2, ativo: true,
                                              cnpj: '50.001.789/0001-84', telefone: '5555-2356', email: 'hospitaldasclinicas@vacinado.com',
                                              endereco: local2)
fabricante1 = Fabricante.create(responsavel: pessoa1, nome: 'Instituto Butantã', cnpj: '64.001.815/0001-94',
                                telefone: '5555-1928', email: 'contato_butanta@vacinados.com', endereco: local2)
fabricante2 = Fabricante.create(responsavel: pessoa4, nome: 'Fundação Oswaldo Cruz', cnpj: '82.001.645/0001-82',
                                telefone: '5555-8246', email: 'contato_fiocruz@vacinados.com', endereco: local4)
detalhes1 = DetalhesDaVacina.create(nome_da_vacina: 'Oxford/Covishield (Fiocruz e Astrazeneca)',
                                    efeitos_colaterais: 'Febre leve em 10% dos casos, dores no corpo em 40% dos casos de primeira dose.',
                                    interacoes_medicamentosas: 'Não tomar aspirina nas próximas 48h.', permitidas: true)
lote1 = Lote.create(ccodigo: 'AZ784912-X', vacina_do_lote: detalhes1, fabricante: fabricante1, quantidade: 200,
                    destino_do_lote: local_de_aplicacao1)
imunizante1 = Imunizante.create(local_de_aplicacao: local_de_aplicacao1, data_de_aplicacao: 2021 - 0o6 - 13, paciente: pessoa3,
                                lote: lote1, nro_da_dose: 1)
inventario1 = Inventario.create(vacina: detalhes1, quantidade: 500, local_de_aplicacao: local_de_aplicacao2)
restricao1 = Restricao.create(primeira_dose: 1, segunda_dose: 1, terceira_dose: 2, quarta_dose: 3)
# rubocop:enable Lint/UselessAssignment, Layout/LineLength
