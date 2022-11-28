class HomePolicy < ApplicationPolicy
  
  def index?
    current_user.perfil == "Administrador"
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
