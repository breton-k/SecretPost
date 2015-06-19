  class Ability
    include CanCan::Ability

    def initialize(user)
      can :create, Post

      if user && user.is_admin?
        cannot :publish, :all
        can :publish, Post
      end
    end
  end