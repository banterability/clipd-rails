require 'test_helper'

class ClipsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:clips)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_clip
    assert_difference('Clip.count') do
      post :create, :clip => { }
    end

    assert_redirected_to clip_path(assigns(:clip))
  end

  def test_should_show_clip
    get :show, :id => clips(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => clips(:one).id
    assert_response :success
  end

  def test_should_update_clip
    put :update, :id => clips(:one).id, :clip => { }
    assert_redirected_to clip_path(assigns(:clip))
  end

  def test_should_destroy_clip
    assert_difference('Clip.count', -1) do
      delete :destroy, :id => clips(:one).id
    end

    assert_redirected_to clips_path
  end
end
