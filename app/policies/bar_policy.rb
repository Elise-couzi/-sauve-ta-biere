class BarPolicy < ApplicationPolicy
  def update?
    record.user == user
  end

  def show?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
