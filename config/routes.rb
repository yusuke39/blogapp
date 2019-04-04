Rails.application.routes.draw do

devise_for :users
 root 'blogs#index'

resources :blogs

  # # get   'blogs'      =>  'blogs#index'     #一覧画面
  # get   'blogs/new'  =>  'blogs#new'       #投稿画面
  # post  'blogs'      =>  'blogs#create'    #DBへ
end
