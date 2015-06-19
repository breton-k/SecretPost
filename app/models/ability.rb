  class Ability
    include CanCan::Ability

    def initialize(user)
      can :dashboard
      can :create, Post, Comment

      if user && user.is_admin?
        can :access, :rails_admin
        cannot :publish, :all
        can :publish, Post, Comment
      end
    end
  end