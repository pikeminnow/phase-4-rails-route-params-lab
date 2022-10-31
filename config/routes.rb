Rails.application.routes.draw do
  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#students'
  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'
end
