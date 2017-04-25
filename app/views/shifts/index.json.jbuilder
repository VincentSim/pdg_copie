json.array! @events do |event|
  date_format = '%Y-%m-%d'
  json.id shift.id
  json.title shift.title
  json.start shift.start_date.strftime(date_format)
  json.end shift.end_date.strftime(date_format)
  json.color red
  json.allDay true
  json.update_url shift_path(shift, method: :patch)
  json.edit_url edit_shift_path(shift)
end