class ProfilesController < ApplicationController
  def new
    # form where a user can fillout their own profile.
    @user = User.find( params[user:id] )
    @profile = @user.build_profile
  end
end