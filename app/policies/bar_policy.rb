class BarPolicy < ApplicationPolicy
  def update?
    record.user == user
  end

  def show?
    record.user == user || user.manager == false
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
