class AlbumsController < ApplicationController
    before_action :set_album, only: [:show, :edit, :udpate, :destroy]
    before_action :authenticate_user!, except: [:show, :index]
    
    def index
       @albums = Album.all
    end

    def show 
        @album = Album.find(params[:id])
    end
    
    def new 
        @album = current_user.albums.new
    end
    
    def create 
        @album = current_user.albums.new(albums_params)
     
        if @album.save
            redirect_to @album, notice: "Created Successfully"
        else
            render :new , alert: "Failed to create"
        end
    end
    
    def edit 
        @album = Album.find(params[:id])
    end

    def update
        @album = Album.find(params[:id])
         if @album.update(albums_params)
            redirect_to @album, notice: "Updated Successfully"
        else
            render :edit, alert: 'Album could not be updated'
        end
    end

    def destroy
        @album = Album.find(params[:id])
        @album.destroy

        redirect_to @album, notice:'Deleted Successfully'
    end

    
    private

    def set_album
      @album = Album.find(params[:id])
    end

    def albums_paramas
      params.require(:album).permit(:name, :description, :image )
    end
    
end
