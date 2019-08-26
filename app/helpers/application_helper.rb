module ApplicationHelper
    include Pagy::Frontend

    def number_to_currency_br(number)
        number_to_currency(number, :unit => "R$ ", :separator => ",", :delimiter => ".")
      end
    
      def formata_data(data)
        data&.strftime('%d/%m/%Y')
      end
    
      def formata_data_hora(data)
        data&.strftime('%d/%m/%Y - %H:%M')
      end
    
      def flash_message
        notification = ''
        [:success, :info, :warning, :error].each do |type|
          if flash[type]
            notification += "<script>
              toastr.#{type}('#{flash[type]}')
            </script>"
          end
        end
        notification.html_safe
      end
    
      def vazio(valor)
        if(valor.empty?)     
          return "Nenhum conteúdo"
        else
          return valor
        end
      end
end
