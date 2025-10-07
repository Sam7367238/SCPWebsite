class ScpPolicy < ApplicationPolicy
  # See https://actionpolicy.evilmartians.io/#/writing_policies
  #
  def index?
    clearance_level(2)
  end

  def show?
    clearance_level(2)
  end

  def create?
    clearance_level(2)
  end

  def edit?
    clearance_level(2)
  end

  def update?
    clearance_level(2)
  end

  def new?
    clearance_level(2)
  end

  def destroy?
    clearance_level(2)
  end

  #
  # def update?
  #   # here we can access our context and record
  #   user.admin? || (user.id == record.user_id)
  # end

  # Scoping
  # See https://actionpolicy.evilmartians.io/#/scoping
  #
  # relation_scope do |relation|
  #   next relation if user.admin?
  #   relation.where(user: user)
  # end
end
