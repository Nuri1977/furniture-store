# frozen_string_literal: true

ActiveAdmin.register Type do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :category_id, :type_name
  #
  # or
  #
  # permit_params do
  #   permitted = [:category_id, :type_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :category_id, as: :select, collection: Category.all.map { |u| [u.category_name.to_s, u.id] }
      f.input :type_name
    end
    f.actions
  end
end
