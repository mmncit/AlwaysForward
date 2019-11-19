# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Faker::Config.locale = 'en-CA'
# generate patient data
0.times do
    Patient.create({
        clinic: [
            "Brentwood Family Medical Centre", 
            "University City Clinic", 
            "Alberta Hip and Knee Clinic",
            "Medisys Preventive Health Clinic", 
            "AAI Allergy And Asthma Clinic",
            "Thorncliff Family Clinic"].sample,
        name: Faker::Name.name,
        employer: Faker::Company.name,
        home_phone: Faker::PhoneNumber.phone_number, 
        cell_phone: Faker::PhoneNumber.cell_phone,
        address: Faker::Address.street_address, 
        province: Faker::Address.state_abbr,
        city: Faker::Address.city,
        postal_code: Faker::Address.postcode

    })
  end
# generate insurance coverage data
10.times do
    InsuranceCoverage.create({
      employer: Faker::Company.name,
      insurance_company: [
        "Intact", 
        "Aviva", 
        "Empire Life",
        "Desjardins Group", 
        "SSQ Financial Group",
        "Sun Life Financial",
        "TD Insurance"].sample, 
      policy_number: Faker::Number.number(digits: 10),
      coverage_percentage: Faker::Number.decimal(l_digits: 2),  
      coverage_type: ["Orthotics", "Compression Stockings", "Braces"].sample, 
      product_quantity: Faker::Number.between(from: 1, to: 10),
      maximum_amount: Faker::Number.within(range: 1..100), 
      coverage_frequency: Faker::Number.within(range: 1..10),
      coverage_period: Faker::Number.within(range: 1..12)
  })
end