require 'rails_helper'

describe "post a cartoon exception route", :type => :request do
  before do
    post '/cartoons'
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
