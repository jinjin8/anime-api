require 'rails_helper'

describe "get an individual route", :type => :request do

  it 'returns a not found exception' do
    get '/cartoons/1'
    expect(response).to have_http_status(:not_found)
  end
end
