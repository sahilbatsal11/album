module AlbumStore
  class Base < Grape::API 
   mount AlbumStore::V1::Albums
  end
end