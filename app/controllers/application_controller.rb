# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :skip_navbar?

  def skip_navbar?
    devise_controller? && !editing_user?
  end

  protected

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  private

  def editing_user?
    controller_name == 'registrations' && action_name == 'edit'
  end
end
