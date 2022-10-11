Rails.application.routes.draw do
    get 'top/main'
    root 'top#main'
    post 'top/login'
    get 'top/logout'
end