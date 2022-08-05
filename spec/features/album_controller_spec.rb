require 'rails_helper'

RSpec.describe 'album feature', type: :feature do
    scenario 'login and enter valid email' do 
     visit '/albums'
     expect(current_path).to eq('/albums')
    end

     
    context 'create new album' do 
        scenario "should be successful" do 
            visit new_album_path
            within('form') do 
            end
            expect(page).to have_content(' ')
        end
    end

    describe 'viewing the index' do
        it 'lists all the album' do 
            Album.create(name: 'sfdf', description: 'hdhfhu')
            visit albums_url
        end
    end

    # it 'shows the static text' do 
    #     visit albums_url
    #     expect (page).to have_content ' '
    # end

    # scenario 'empty title' do 
    #     visit albums_path

    #     expect(page).to habe_content(" ")
    # end
end
