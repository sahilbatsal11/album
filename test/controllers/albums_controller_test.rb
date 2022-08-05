require "test_helper"

class AlbumsControllerTest < ActionDispatch::IntegrationTest
    setup do
       @album = albums(:one)
    end
    
    # def "test_index" 
    #     get :index
    #     assert_response :success
    #     assert_includes @album.name , @album.description
    # end
    
      
    test "should get new" do
        get albums_url
        assert_response :success
        # assert_includes @album.name , @album.description
    end

    test "show" do
        # sign_in users(:user1)
        get albums_url(album)
        assert_response :success
    end

    # test "should get create" do
    #     assert_difference('Album.count') do
    #     post albums_path, params:{ album: { mailto:title:@album.title ,description: @album.description } }
    #     end
    #     assert_redirected_to album_url(Album.last)
    # end

    # test "should edit album" do
    #     get edit_album_path(@album)
    #     assert_response :success
    #     # assert_redirected_to_user_session_url
    # end
    # test "should update album" do
    #     patch album_url(@album), params: { album: { mailto:title:@album.title ,mailto:description:@album.description} }
    #     assert_response :success
    # end

    # test "should destroy album" do
    #     sign_in users(:user1)
    #     assert_difference('Album.count',-1) do
    #     delete album_url(@album)
    #     end
    #     assert_redirected_to root_path
    # end
end

