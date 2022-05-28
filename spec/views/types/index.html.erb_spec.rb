# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'types/index', type: :view do
  it 'renders a list of types' do
    assign(:types, [
             Type.create!(
               category: Category.create(category_name: 'test'),
               type_name: 'Type Name 1'
             ),
             Type.create!(
               category: Category.create(category_name: 'test1'),
               type_name: 'Type Name 2'
             )
           ])
    render
    expect(rendered).to include('Type Name 1')
    expect(rendered).to include('Type Name 2')
  end
end
