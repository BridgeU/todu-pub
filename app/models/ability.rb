class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user

    can :manage, TodoList
    can :manage, TodoItem
  end
end
