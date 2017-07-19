require 'rails_helper'

describe "get all cartoons route", :type => :request do
  before { Cartoon.destroy_all }
  let!(:cartoons) { FactoryGirl.create_list(:cartoon, 20)}

  before { get '/cartoons/page/1'}

  it 'returns all cartoons' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
