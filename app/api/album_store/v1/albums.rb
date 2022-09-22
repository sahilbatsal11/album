module AlbumStore 
  module V1
    class Albums < Grape::API
      version 'v1', using: :path 
      format :json 
      prefix :api 

      resource :albums do 
        desc 'Return list of albums'
        get do
          albums = Album.all 
          present albums
        end

       desc 'Return a specific album'
        route_param :id do
          get do
            album = Album.find(params[:id])
            present album, with: AlbumStore::Entities::Index 
          end
        end
      end

      resource :users do 
        desc 'Create a user.'
        params do 
          requires :user, type: Hash do 
          requires :name , type: String, desc: 'Name'
          requires :description, type: String, desc: 'Description.'
          end
        end
        post do
          @album = Album.find(params[:id])
          @user = User.new(params[:user])
          @user = @album.users.create!(params[:user])
          @album.update(name: @user.name)
        end
      end
    end 
  end
end

