class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all

    if user
      can :create, [Retreat, Comment, Photo]
    end


    can [:update, :destroy], [Retreat, Comment, Photo], :user => user

  end
end
