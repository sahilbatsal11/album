module AlbumStore
  module Entities
    class User < Grape::Entity
      expose :name
      expose :description
      expose :users, using: AlbumStore::Entities::User 
    end
  end
end
   