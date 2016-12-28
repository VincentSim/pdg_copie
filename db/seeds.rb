# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

WORKERS =[
  { "first_name": "Julie", "status": "medic" },
  { "first_name": "Marc", "status": "medic" },
  { "first_name": "Antoine", "status": "interne" },
  { "first_name": "Emilie", "status": "medic" },
  { "first_name": "Lea", "status": "interim" }
]
SHIFTS = [
  { "planning_id": 1, "user_name": "Julie", "start_date": "2017-1-1" },
  { "planning_id": 1, "user_name": "Marc", "start_date": "2017-1-2" },
  { "planning_id": 1, "user_name": "Antoine", "start_date": "2017-1-3" },
  { "planning_id": 1, "user_name": "Emilie", "start_date": "2017-1-4" },
  { "planning_id": 1, "user_name": "Lea", "start_date": "2017-1-5" },
  { "planning_id": 1, "user_name": "Marc", "start_date": "2017-1-6" },
  { "planning_id": 1, "user_name": "Lea", "start_date": "2017-1-7" },
  { "planning_id": 1, "user_name": "Emilie","start_date": "2017-1-8" },
  { "planning_id": 1, "user_name": "Lea", "start_date": "2017-1-9" },
  { "planning_id": 1, "user_name": "Marc", "start_date": "2017-1-10" }
]
# WORKERS.each do |params|
#   Worker.create!(params)
# end
SHIFTS.each do |params|
  worker = Worker.find_by(first_name: params[:user_name])
  Shift.create!({start_date: params[:start_date], worker: worker})
end