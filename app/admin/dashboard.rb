# frozen_string_literal: true

ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    columns do
      column do
        panel 'Pessoas' do
          ul class: 'tabela_dashboard' do
            Pessoa.all.limit(3).map do |pessoa|
              li "Nome: #{pessoa.nome}"
              li pessoa.email
              br
            end
          end
        end
      end

      column do
        panel 'Info' do
          para 'Welcome to ActiveAdmin.'
        end
      end
    end
  end
end
