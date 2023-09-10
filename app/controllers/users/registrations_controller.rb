# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, options = {})
    if resource.persisted?
      render json: {
        status: { code: 200, message: 'signup successful',
        data: resource}
      },status: :ok

    else
      render json: { 
        status: { message: 'user could not be found',
          errors: resource.errors.full_messages }, status: :unprocessable_entity
        } , status: :unauthorized
    end
  end
end
