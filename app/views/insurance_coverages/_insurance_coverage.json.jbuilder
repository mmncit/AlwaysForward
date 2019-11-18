json.extract! insurance_coverage, :id, :employer, :insurance_company, :policy_number, :coverage_percentage, :coverage_type, :product_quantity, :maximum_amount, :coverage_frequency, :coverage_period, :created_at, :updated_at
json.url insurance_coverage_url(insurance_coverage, format: :json)
