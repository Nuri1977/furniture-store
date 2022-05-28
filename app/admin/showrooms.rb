# frozen_string_literal: true

ActiveAdmin.register Showroom do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :adress, :phone, :mobile, :email, :image_url, :geolocation
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :adress, :phone, :mobile, :email, :image_url, :geolocation]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
