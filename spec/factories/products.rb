FactoryBot.define do
  factory :product do
    type { nil }
    product_name { "MyString" }
    price { 1 }
    show_price { false }
    new_product { false }
    on_promotion { false }
    is_outlet { false }
    dimensions { "MyText" }
  end
end
