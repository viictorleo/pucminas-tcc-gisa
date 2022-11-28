module ApplicationHelper
  def title
    if (params[:controller] == 'associate_services')
      "Serviços do Associado"
    elsif (params[:controller] == 'home')
      "Página Inicial"
    elsif (params[:controller] == 'authorization_requests')
      "Solicitação de Autorização"
    elsif (params[:controller] == 'health_wallets')
      "Carteirinha"
    else
      "Configurações"
    end
  end
end
