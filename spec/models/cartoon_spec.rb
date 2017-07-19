require 'rails_helper'

describe Cartoon do
  it { should have_many :characters }
  it { should validate_presence_of :name }
end
