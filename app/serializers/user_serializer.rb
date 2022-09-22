class UserSerializer < Panko::UserSerializer 
    attributes :name, :description 

    has_many :albums, serializer: AlbumSerializer 
end 
