# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'types/index', type: :view do
  before do
    assign(:types, [
             Type.create!(
               category: nil,
               type_name: 'Type Name'
             ),
             Type.create!(
               category: nil,
               type_name: 'Type Name'
             )
           ])
  end

  it 'renders a list of types' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 'Type Name'.to_s, count: 2
  end
end
