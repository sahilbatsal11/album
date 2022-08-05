require 'rails_helper'

RSpec.describe "Album", type: :request do
  current_user = User.first_or_create!(email: 'abc@example.com', 
  password: 'password',password_confirmation: 'password')

     let(:valid_attributes) do
        { 
           'id' => '1',
           'name' => 'name 1',
           'description' => 'this is my description text.' 
        }
     end
    
     describe 'GET /edit' do 
        it 'render a successful response' do 
            album = Album.new(valid_attributes)
            album.user = current_user
            album.save
        end
    end

    describe 'update' do 
        context 'with valid parameters' do
            let(:new_attributes) do 
                {
                    'id' => '1',
                    'name' => 'name',
                    'description' => 'this is my description text.'
                }
            end
        end

       it 'redirects to the user' do 

        album = Album.new(valid_attributes)
        album.user = current_user
        album.save 
        # patch album_url(album), params: { album: new_attributes }
        # album.reload 
        # expect(response).to_not be_successful

       end
    end

    describe 'DELETE /destroy' do
      it 'redirects to the album' do
        album = Album.new(valid_attributes)
        album.user = current_user
        album.save
      end
    end

    describe "/albums/create" do 
        def create_album(name,description)
            post albums_path, params: {
                album: {
                    name: name,
                    description: description
                }
            }
        end
    end

    describe "/albums/:id for show" do
        context "when passing in valid album id" do 
            it "fails" do
                expect { get album_path("hfjhdfj") }.to raise_error(ActiveRecord::RecordNotFound)
            end
        end
    end
end
