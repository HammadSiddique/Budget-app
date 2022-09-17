class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :read, :all

    if user.role == 'admin'
      can :manage, :all
    else
      can :manage, Budget, user: user
      can :manage, Category, user: user
      can :manage, CategoryBudget, user:
    end
  end
end
