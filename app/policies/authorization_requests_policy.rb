class AuthorizationRequestsPolicy < ApplicationPolicy
  def index?
    user.perfil == "Administrador"
  end

  def new?
    user.perfil == "Administrador"
  end

  def create?
    user.perfil == "Administrador"
  end
  
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
