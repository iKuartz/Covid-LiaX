# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength

ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content do
    columns do
      column do
        panel 'Pessoas' do
          table class: 'table-auto' do
            thead do
              tr do
                th 'Nome'
                th 'Email'
                th 'CPF'
                th 'Data de Nascimento'
                th 'Grupo de Risco'
                th 'Comorbidade'
                th 'Telefone'
              end
            end
            tbody do
              Pessoa.all.limit(4).map do |pessoa|
                tr do
                  td pessoa.nome.to_s
                  td pessoa.email.to_s
                  td pessoa.cpf.to_s
                  td pessoa.data_nascimento.to_s
                  if pessoa.grupo_risco
                    td 'Sim'
                    td pessoa.comorbidade.to_s
                  else
                    td 'Não'
                    td 'Não Possui'
                  end
                  td pessoa.telefone.to_s
                end
              end
            end
          end
        end
      end

      column do
        panel 'Imunizantes' do
          table do
            Imunizante.all.limit(3).map do |imunizante|
              td "Local de aplicação: #{imunizante.local_de_aplicacao.nome_do_local}"
              td "Paciente: #{imunizante.pessoa.nome}"
              td "Lote: #{imunizante.lote.codigo}"
              td "Data da aplicação: #{imunizante.data_de_aplicacao}"
              td "Número da dose: #{imunizante.nro_da_dose}"
              br
            end
          end
        end
      end
    end
    columns do
      column do
        panel 'Fabricante' do
          table do
            Fabricante.all.limit(4).map do |fabricante|
              td "Responsável: #{fabricante.pessoa.nome}"
              td "Nome do fabricante: #{fabricante.nome}"
              td "CNPJ: #{fabricante.cnpj}"
              td "Telefone: #{fabricante.telefone}"
              td "Email: #{fabricante.email}"
              td "Endereço: #{fabricante.local.estado}, #{fabricante.local.cidade}, #{fabricante.local.bairro}, #{fabricante.local.rua}, #{fabricante.local.numero}, #{fabricante.local.complemento}"
              br
            end
          end
        end
      end

      column do
        panel 'Locais de Aplicação' do
          table do
            LocalDeAplicacao.all.limit(3).map do |local|
              td "Nome do local: #{local.nome_do_local}"
              td "Responsável: #{local.pessoa.nome}"
              if local.ativo
                td 'Local ativo'
              else
                td 'Local desativado'
              end
              td "CNPJ: #{local.cnpj}"
              td "Telefone: #{local.telefone}"
              td "Email: #{local.email}"
              td "Endereço: #{local.local.estado}, #{local.local.cidade}, #{local.local.bairro}, #{local.local.rua}, #{local.local.numero}, #{local.local.complemento}"
              br
            end
          end
        end
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
