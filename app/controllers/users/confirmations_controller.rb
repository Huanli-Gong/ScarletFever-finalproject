# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController
  skip_before_action :require_login
  # GET /resource/confirmation/new
  # def new
  #   super
  # end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef
  # def show
  #   super
  # end

  # protected

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # Custom method that takes the user to the index_path (home page) after they have confirmed their email
  def after_confirmation_path_for(resource_name, resource)
      sign_in(resource)
      home_index_path
  end
end
