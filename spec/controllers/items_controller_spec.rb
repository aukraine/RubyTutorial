require 'rails_helper'

describe ItemsController do

  #def it_renders_404_page_when_item_is_not_found(*actions)
  #
  #  actions.each do |action|
  #    it "#{action} renders 404 page when item is not found" do
  #      verb = if action == :update
  #               "PUT"
  #             elsif action == :destroy
  #               "DELETE"
  #             else
  #               "GET"
  #             end
  #      process action, verb, { id: 0 }
  #      response.status.should == 404
  #    end
  #  end
  #
  #end

  it_renders_404_page_when_item_is_not_found :show, :edit, :update, :destroy

  describe 'show action' do

    it 'renders show template if an item is found' do
      item = create(:item)
      get :show, { id: item.id }
      response.should render_template('show')
    end

    it 'renders 404 page if an item is not found' do
      get :show, { id: 0 }
      response.status.should == 404
    end

  end

  describe 'create action' do

    it 'redirects to image cropping page if validations pass' do
      post :create, item: { name: 'item_1', price: '10', description: 'bla-bla' }, admin: 1
      response.should redirect_to(item_path(assigns(:item)))
    end

    it 'renders new page again if validations fail' do
      post :create, item: { name: 'item_1', price: 0, description: 'bla-bla' }, admin: 1
      response.should render_template('new')
    end

    it 'renders 403 page if user is not an admin' do
      post :create, item: { name: 'item_1', price: 0 }
      response.status.should == 403
    end

  end

  describe 'destroy action' do

    it 'redirects to index action when an item is destroyed successfully' do
      item = create(:item)
      #delete :destroy, id: item.id, admin: 1
      #response.should redirect_to(item_path)
    end

    it 'renders 404 pagw if an item was not found'do
      delete :destroy, id: 0, admin: 1
      response.status.should == 404
    end

  end

end
