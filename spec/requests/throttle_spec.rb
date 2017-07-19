describe 'get cartoons route', :type => :request do
  let!(:cartoons) { FactoryGirl.create_list(:cartoon, 15)}

  before do
    101.times do
      get '/cartoons'
    end
  end

  it 'test successfull throttle' do
    expect(response.status).to eq 403
  end
end
