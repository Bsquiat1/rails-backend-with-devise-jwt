# app/controllers/users/registrations_controller.rb

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :image, :role)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :name, :image, :role)
  end

  def respond_with(resource, options = {})
    if resource.persisted?
      render json: {
        status: { code: 200, message: 'signup successful' },
        data: {
          id: resource.id,
          email: resource.email,
          created_at: resource.created_at,
          updated_at: resource.updated_at,
          jti: resource.jti,
          role: resource.role, 
          name: resource.name, 
          image: resource.image
        }
      }, status: :ok
    else
      render json: { 
        status: { message: 'user could not be found',
          errors: resource.errors.full_messages },
      }, status: :unprocessable_entity
    end
  end
end
