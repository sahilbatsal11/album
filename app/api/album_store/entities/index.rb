module AlbumStore 
  module Entities 
    class Index < Grape::Entity 
      expose :name 
      expose :description
    end 
  end
end