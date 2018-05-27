Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pdf', action: :show, controller: 'fill_pdf';
  
end
