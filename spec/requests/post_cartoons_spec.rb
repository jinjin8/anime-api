require 'rails_helper'

describe "post a cartoon route", :type => :request do
  before do
    post '/cartoons', params: { :name => 'test cartoon' }
  end

  it 'returns the name' do
    expect(JSON.parse(response.body)['name']).to eq('test cartoon')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
