# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#              fermentables GET    /fermentables(.:format)                                                                  fermentables#index
#                           POST   /fermentables(.:format)                                                                  fermentables#create
#           new_fermentable GET    /fermentables/new(.:format)                                                              fermentables#new
#          edit_fermentable GET    /fermentables/:id/edit(.:format)                                                         fermentables#edit
#               fermentable GET    /fermentables/:id(.:format)                                                              fermentables#show
#                           PATCH  /fermentables/:id(.:format)                                                              fermentables#update
#                           PUT    /fermentables/:id(.:format)                                                              fermentables#update
#                           DELETE /fermentables/:id(.:format)                                                              fermentables#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  resources :fermentable_additions
  resources :recipes
  resources :fermentables
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
