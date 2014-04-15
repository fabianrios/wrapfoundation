require 'test_helper'

class TemplatesControllerTest < ActionController::TestCase
  setup do
    @template = templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create template" do
    assert_difference('Template.count') do
      post :create, template: { browser: @template.browser, category: @template.category, compatible: @template.compatible, description: @template.description, exclusive: @template.exclusive, extended: @template.extended, multiple: @template.multiple, name: @template.name, preprocessor: @template.preprocessor, preview: @template.preview, price: @template.price, screenshot: @template.screenshot, tag: @template.tag, term: @template.term, version: @template.version }
    end

    assert_redirected_to template_path(assigns(:template))
  end

  test "should show template" do
    get :show, id: @template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @template
    assert_response :success
  end

  test "should update template" do
    put :update, id: @template, template: { browser: @template.browser, category: @template.category, compatible: @template.compatible, description: @template.description, exclusive: @template.exclusive, extended: @template.extended, multiple: @template.multiple, name: @template.name, preprocessor: @template.preprocessor, preview: @template.preview, price: @template.price, screenshot: @template.screenshot, tag: @template.tag, term: @template.term, version: @template.version }
    assert_redirected_to template_path(assigns(:template))
  end

  test "should destroy template" do
    assert_difference('Template.count', -1) do
      delete :destroy, id: @template
    end

    assert_redirected_to templates_path
  end
end
