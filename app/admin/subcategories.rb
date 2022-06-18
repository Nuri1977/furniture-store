# frozen_string_literal: true

ActiveAdmin.register Subcategory do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :category_id, :name, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:category_id, :name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :name
      f.input :image, as: :file
    end
    f.actions
  end

end
