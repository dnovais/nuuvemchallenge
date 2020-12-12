FactoryBot.define do
  factory :address do
    person { nil }
    street { "MyString" }
    number { "MyString" }
  end
end
