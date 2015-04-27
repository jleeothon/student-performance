Rails.application.routes.draw do
  root 'main#index'
  get 'select' => 'main#select'
  get 'query' => 'main#query'
  get 'result' => 'main#result'
end
