class BarBeerPolicy < ApplicationPolicy
  def create?
    true
  end

  def new?
    create?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
