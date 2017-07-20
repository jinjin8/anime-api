require 'rails_helper'

describe "it shows cartoon name when a request is made for getting characters", :type => :request do

  before do
    Cartoon.destroy_all
    cartoon = FactoryGirl.create(:cartoon_with_characters)
    get "/cartoons/#{cartoon.id}/characters/#{cartoon.characters[0].id}"
  end

  it 'returns cartoon name for that character' do
    expect(JSON.parse(response.body)["cartoon"]["name"]).to eq("Sailor Moon")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
