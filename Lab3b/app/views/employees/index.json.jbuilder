json.array!(@employees) do |employee|
  json.extract! employee, :id, :emp_no, :first_name, :last_name, :birth_date, :gender, :hire_date
  json.url employee_url(employee, format: :json)
end
