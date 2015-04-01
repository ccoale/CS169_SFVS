class Admin::AdminController < ApplicationController

  before_filter :require_admin

  def index
  end

  private

  def require_admin
    authorize current_user, :is_admin?
  end

end
