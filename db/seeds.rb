 require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# doc = Doctor.create(first_name: "jean", last_name: "paul", speciality: "podologue", zip_cod:"26650")
# pat = Patient.create(first_name: "lola", last_name: "Leroux")
# app = Appointment.create(doctor: doc, patient: pat)


# Doctor.destroy_all
# Patient.destroy_all
# Appointment.destroy_all


10.times do
  city_test = City.create!(name: Faker::Address.city)
  patient_test = Patient.create!(first_name: Faker::Name.first_name , last_name:Faker::Name.last_name)
  doctor_test = Doctor.create!(first_name: Faker::Name.first_name , last_name:Faker::Name.last_name, speciality:Faker::Job.title,zip_cod: Faker::Address.zip_code)
  appointment_test = Appointment.create!(date: Faker::Date.forward(days: 23), doctor: doctor_test, patient: patient_test, city: city_test)  
end

