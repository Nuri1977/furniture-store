# frozen_string_literal: true

ActiveAdmin.register Product do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :type_id, :product_name, :price, :show_price, :new_product, :on_promotion, :is_outlet, :dimensions
  #
  # or
  #
  # permit_params do
  #   permitted = [:type_id, :product_name, :price, :show_price, :new_product, :on_promotion, :is_outlet, :dimensions]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
