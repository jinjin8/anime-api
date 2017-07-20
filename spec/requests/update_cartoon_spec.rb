require 'rails_helper'

describe "the update cartoon route", :type => :request do
  cartoon = FactoryGirl.create(:cartoon)

  it 'tests the put route' do
    put "/cartoons/#{cartoon.id}", params: { :name => 'The Nicky Show'}
    get "/cartoons/#{cartoon.id}"
    expect(JSON.parse(response.body)["name"]).to eq('The Nicky Show')
  end
end
