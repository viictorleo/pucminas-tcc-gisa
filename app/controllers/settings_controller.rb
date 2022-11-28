class SettingsController < ApplicationController
  def index
    @users = User.all
  end
end
