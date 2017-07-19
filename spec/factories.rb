FactoryGirl.define do

  factory :cartoon do
    name('Sailor Moon')
  end

  factory :character do
    name('Sailor Jupiter')
    powers('{Supreme Thunder, Supreme Thunder Crash}')
  
  end
end
