require 'rails_helper'

describe "the update character route", :type => :request do

  it 'tests the put route' do
    cartoon = FactoryGirl.create(:cartoon_with_characters)
    put "/cartoons/#{cartoon.id}/characters/#{cartoon.characters[0].id}", params: { :name => 'Nicky'}
    get "/cartoons/#{cartoon.id}/characters/#{cartoon.characters[0].id}"
    expect(JSON.parse(response.body)["name"]).to eq('Nicky')
  end
end
