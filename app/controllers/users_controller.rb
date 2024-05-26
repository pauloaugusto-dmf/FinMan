class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    if current_user.update!(user_params)
      redirect_to users_edit_path, notice: 'User was successfully updated.'
    else
      redirect_to users_edit_path, alert: 'Failed to update user.'
    end
  rescue ActiveRecord::RecordInvalid => e
    redirect_to users_edit_path, alert: e.record.errors.full_messages.join('. ').concat('.')
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :phone, :email, :password, :password_confirmation)
  end
end
