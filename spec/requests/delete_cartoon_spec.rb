require 'rails_helper'

describe "the delete cartoon route", :type => :request do
  cartoon = FactoryGirl.create(:cartoon)

  it 'returns a deleted status' do
    get "/cartoons/#{cartoon.id}"
    delete "/cartoons/#{cartoon.id}"
    expect(response).to have_http_status(200)
  end
end
