Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  match '/movies/director/:id', to: 'movies#director', via: [:all],  as: 'search_director'
end
