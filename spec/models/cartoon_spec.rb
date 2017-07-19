require 'rails_helper'

describe Cartoon do
  it { should have_many :characters }
end
