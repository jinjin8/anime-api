require 'rails_helper'

describe "the delete character route", :type => :request do

  it 'returns a deleted status' do
    cartoon = FactoryGirl.create(:cartoon_with_characters)
    get "/cartoons/#{cartoon.id}/characters/#{cartoon.characters[0].id}"
    delete "/cartoons/#{cartoon.id}/characters/#{cartoon.characters[0].id}"
    expect(response).to have_http_status(200)
  end
end
