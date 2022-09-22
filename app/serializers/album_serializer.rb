class AlbumSerializer < Panko::serializer 
    attributes :name, :description 
    AlbumSerializer.new.serialize_to_json(Album.first) 
end