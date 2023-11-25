# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# Seed Doctors
doctor1 = Doctor.create(
  first_name: 'John',
  last_name: 'Doe',
  specialization: 'Dentist',
  email: 'john.doe@example.com'
)

doctor2 = Doctor.create(
  first_name: 'Jane',
  last_name: 'Smith',
  specialization: 'Orthodontist',
  email: 'jane.smith@example.com'
)

doctor3 = Doctor.create(
  first_name: 'Robert',
  last_name: 'Johnson',
  specialization: 'Pediatric Dentist',
  email: 'robert.j@example.com'
)

doctor4 = Doctor.create(
  first_name: 'Sarah',
  last_name: 'Lee',
  specialization: 'Oral Surgeon',
  email: 'sarah.lee@example.com'
)

doctor5 = Doctor.create(
  first_name: 'Michael',
  last_name: 'Brown',
  specialization: 'Prosthodontist',
  email: 'michael.brown@example.com'
)

# Seed Patients
patient1 = Patient.create(
  first_name: 'Alice',
  last_name: 'Johnson',
  email: 'alice.j@example.com',
  address: '123 Main St',
  gender: 'Female',
  contact_number: '123-456-7890'
)

patient2 = Patient.create(
  first_name: 'Bob',
  last_name: 'Miller',
  email: 'bob.m@example.com',
  address: '456 Oak St',
  gender: 'Male',
  contact_number: '987-654-3210'
)

patient3 = Patient.create(
  first_name: 'Eva',
  last_name: 'Clark',
  email: 'eva.c@example.com',
  address: '789 Elm St',
  gender: 'Female',
  contact_number: '555-555-5555'
)

patient4 = Patient.create(
  first_name: 'Daniel',
  last_name: 'Johnson',
  email: 'daniel.j@example.com',
  address: '101 Pine St',
  gender: 'Male',
  contact_number: '111-222-3333'
)

patient5 = Patient.create(
  first_name: 'Grace',
  last_name: 'Martin',
  email: 'grace.m@example.com',
  address: '202 Maple St',
  gender: 'Female',
  contact_number: '777-888-9999'
)

# Associate patients with doctors
doctor1.patient << [patient1, patient2, patient3, patient4, patient5]
doctor2.patient << [patient2, patient3, patient4, patient5]
doctor3.patient << [patient3, patient4, patient5]
doctor4.patient << [patient4, patient5]
doctor5.patient << [patient5]


# Seed Appointments
appointment1 = Appointment.create(
  doctor: doctor1,
  patient: patient1,
  appointment_datetime: DateTime.new(2023, 1, 1, 10, 0, 0),
  status: 'Scheduled'
)

appointment2 = Appointment.create(
  doctor: doctor2,
  patient: patient2,
  appointment_datetime: DateTime.new(2023, 1, 2, 14, 30, 0),
  status: 'Scheduled'
)

puts 'Seed data created successfully!'
