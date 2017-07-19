FactoryGirl.define do

  factory :cartoon do
    name('Sailor Moon')
    factory :cartoon_with_characters do
      transient do
        characters_count 10
      end
      after(:create) do |cartoon, evaluator|
        create_list(:character, evaluator.characters_count, cartoon: cartoon)
      end
    end
  end

  factory :character do
    name('Sailor Jupiter')
    powers('{Supreme Thunder, Supreme Thunder Crash}')
    cartoon
  end
end
