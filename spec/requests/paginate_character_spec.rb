require 'rails_helper'

describe "get all characters route", :type => :request do
  before do
    Cartoon.destroy_all
    cartoon = FactoryGirl.create(:cartoon_with_characters)
    get "/cartoons/#{cartoon.id}/characters/page/1"
  end

  it 'returns all characters' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
