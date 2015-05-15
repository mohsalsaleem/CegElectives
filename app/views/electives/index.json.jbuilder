json.array!(@electives) do |elective|
  json.extract! elective, :id, :course_id, :name, :description, :teacher, :students, :unit_1, :unit_2, :unit_3, :unit_4, :unit_5
  json.url elective_url(elective, format: :json)
end
