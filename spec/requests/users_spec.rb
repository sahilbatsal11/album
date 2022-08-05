 require 'rails_helper'
RSpec.describe "Users", type: :request do 
    let(:user) { build(:user) }

    describe 'index' do
        it 'render a successful response' do
            user = User.new(user)
            user.save
            get root_path 
            expect(response).to be_successful
        end
    end
    describe 'GET / show' do 
        it 'renders a successful response' do 
            user = User.new(user)
            user.save
            get root_path
            expect(response).to be_successful
        end
    end

    describe 'GET /new' do 
        it 'renders a successful response' do
         get root_path
         expect(response).to be_successful
        end
    end

    describe 'GET /edit' do
        it 'render a successful response' do
            user = User.new(user)
            user.save
            get root_path
            expect(response).to be_successful
        end
    end

    describe '/create' do
        it 'creates a new User' do
            expect do
                user = User.new(user)
                user.save
                post root_path, params: { user: user } 
            end
        end
    end
end
