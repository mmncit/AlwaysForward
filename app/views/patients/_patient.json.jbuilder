json.extract! patient, :id, :clinic, :name, :home_phone, :cell_phone, :address, :city, :province, :postal_code, :employer, :created_at, :updated_at
json.url patient_url(patient, format: :json)
