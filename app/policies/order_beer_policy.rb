class OrderBeerPolicy < ApplicationPolicy
  def create?
    true
  end

  def add_quantity?
    true
  end

  def remove_quantity?
    true
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
