module ApplicationHelper
    include Pagy::Frontend
    
    def formata_data(data)
      data&.strftime('%d/%m/%Y')
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
end
