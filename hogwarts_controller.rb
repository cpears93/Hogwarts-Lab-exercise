require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/student')
require_relative('./models/house')
also_reload('./models/*')


# INDEX
get '/students' do
  @students = Student.all
  erb(:index)
end

# CREATE

get '/students/new' do
  @houses = House.all
  erb(:new)
end

post '/students' do
  new_student = Student.new(params)
  new_student.save
end
