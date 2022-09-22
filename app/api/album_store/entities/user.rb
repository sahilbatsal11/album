module AlbumStore 
	module Entities 
		class User < Grape::Entity 
    expose :name 
    expose :description 
		end 
	end 
end


