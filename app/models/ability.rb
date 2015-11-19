class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all

    if user
      can :create, Retreat
    end

    can [:update, :destroy], [Retreat, Comment], :user => user

  end
end
