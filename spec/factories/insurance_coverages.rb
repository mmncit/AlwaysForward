FactoryBot.define do
  factory :insurance_coverage do
    employer { "MyString" }
    insurance_company { "MyString" }
    policy_number { "MyString" }
    coverage_percentage { "MyString" }
    coverage_type { "MyString" }
    product_quantity { 1.5 }
    maximum_amount { 1.5 }
    coverage_frequency { 1.5 }
    coverage_period { 1.5 }
  end
end
