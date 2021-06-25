class BeerPolicy < ApplicationPolicy
  def create?
    true
    # record.user == user.manager
    # la biere n'appartient a aucun user actuellement
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
