class OrderPolicy < ApplicationPolicy
  def panier?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
