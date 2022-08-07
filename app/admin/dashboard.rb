# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength

ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    columns do
      column do
        panel 'Pessoas' do
          ul class: 'tabela_dashboard' do
            Pessoa.all.limit(4).map do |pessoa|
              li "Nome: #{pessoa.nome}"
              li "Email: #{pessoa.email}"
              li "CPF: #{pessoa.cpf}"
              li "Data de Nascimento: #{pessoa.data_nascimento}"
              if pessoa.grupo_risco
                li 'Pertence a grupo de risco?: Sim.'
                li "Comorbidade: #{pessoa.comorbidade}"
              else
                li 'Pertence a grupo de risco?: Não.'
              end
              li "Telefone de contato: #{pessoa.telefone}"
              br
            end
          end
        end
      end

      column do
        panel 'Imunizantes' do
          ul class: 'tabela_dashboard' do
            Imunizante.all.limit(3).map do |imunizante|
              li "Local de aplicação: #{imunizante.local_de_aplicacao.nome_do_local}"
              li "Paciente: #{imunizante.pessoa.nome}"
              li "Lote: #{imunizante.lote.codigo}"
              li "Data da aplicação: #{imunizante.data_de_aplicacao}"
              li "Número da dose: #{imunizante.nro_da_dose}"
              br
            end
          end
        end
      end
    end
    columns do
      column do
        panel 'Fabricante' do
          ul class: 'tabela_dashboard' do
            Fabricante.all.limit(4).map do |fabricante|
              li "Responsável: #{fabricante.pessoa.nome}"
              li "Nome do fabricante: #{fabricante.nome}"
              li "CNPJ: #{fabricante.cnpj}"
              li "Telefone: #{fabricante.telefone}"
              li "Email: #{fabricante.email}"
              li "Endereço: #{fabricante.local.estado}, #{fabricante.local.cidade}, #{fabricante.local.bairro}, #{fabricante.local.rua}, #{fabricante.local.numero}, #{fabricante.local.complemento}"
              br
            end
          end
        end
      end

      column do
        panel 'Locais de Aplicação' do
          ul class: 'tabela_dashboard' do
            LocalDeAplicacao.all.limit(3).map do |local|
              li "Nome do local: #{local.nome_do_local}"
              li "Responsável: #{local.pessoa.nome}"
              if local.ativo
                li "Local ativo"
              else
                li "Local desativado"
              end
              li "CNPJ: #{local.cnpj}"
              li "Telefone: #{local.telefone}"
              li "Email: #{local.email}"
              li "Endereço: #{local.local.estado}, #{local.local.cidade}, #{local.local.bairro}, #{local.local.rua}, #{local.local.numero}, #{local.local.complemento}"
              br
            end
          end
        end
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
