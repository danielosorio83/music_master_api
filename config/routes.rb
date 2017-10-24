# == Route Map
#
#  Prefix Verb URI Pattern        Controller#Action
# spotify POST /spotify(.:format) spotifies#create
# 

Rails.application.routes.draw do
  resource :spotify, only: [:create]
end
