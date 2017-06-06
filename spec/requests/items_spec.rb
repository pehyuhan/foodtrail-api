# spec/requests/items_spec.rb
require 'rails_helper'

RSpec.describe 'Items API' do
  let(:user) { create(:user) }
  let!(:list) { create(:list, created_by: user.id) }
  let!(:items) { create_list(:item, 20, list_id: list.id) }
  let(:list_id) { list.id }
  let(:id) { items.first.id }
  let(:headers) { valid_headers }

  describe 'GET /lists/:list_id/items' do
    before { get "/lists/#{list_id}/items", params: {}, headers: headers }

    # [...]
  end

  describe 'GET /lists/:list_id/items/:id' do
    before { get "/lists/#{list_id}/items/#{id}", params: {}, headers: headers }

    # [...]
  end

  describe 'POST /lists/:list_id/items' do
    let(:valid_attributes) { { name: 'Visit Narnia', done: false }.to_json }

    context 'when request attributes are valid' do
      before do
        post "/lists/#{list_id}/items", params: valid_attributes, headers: headers
      end

      # [...]
    end

    context 'when an invalid request' do
      before { post "/lists/#{list_id}/items", params: {}, headers: headers }

      # [...]
    end
  end

  describe 'PUT /lists/:list_id/items/:id' do
    let(:valid_attributes) { { name: 'Mozart' }.to_json }

    before do
      put "/lists/#{list_id}/items/#{id}", params: valid_attributes, headers: headers
    end

    # [...]
    # [...]
  end

  describe 'DELETE /lists/:id' do
    before { delete "/lists/#{list_id}/items/#{id}", params: {}, headers: headers }

    # [...]
  end
end
